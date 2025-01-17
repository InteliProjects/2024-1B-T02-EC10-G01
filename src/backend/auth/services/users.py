from sqlalchemy.future import select
from sqlalchemy.orm import selectinload
from sqlalchemy.ext.asyncio import AsyncSession
from fastapi import APIRouter, Depends, HTTPException
from database import get_session, engine, Base
from models.users import User
from sqlalchemy import literal
import json


async def get_users(session: AsyncSession):
    stmt = select(User)
    result = await session.execute(stmt)
    users = result.scalars().all()
    return [user.to_dict() for user in users]

async def get_user_by_email(session, email: str):
    stmt = select(User).filter(User.email == email)
    result = await session.execute(stmt)
    user = result.scalar()
    return user.to_dict() if user else None

async def get_users_by_role(session, role: str):
    stmt = select(User).filter(User.role == role)
    result = await session.execute(stmt)
    users = result.scalars().all()
    tokens = []
    for user in users:
        tokens.append(user.mobile_token)
    return tokens

async def get_user_by_id(session, user_id: int):
    stmt = select(User).filter(User.id == user_id)
    result = await session.execute(stmt)
    user = result.scalar()
    user = user.to_dict() if user else None
    return user

async def create_user(session, email: str, phone_number: str, password_hash: str, role: str):
    user = User(email=email, phone_number=phone_number, password_hash=password_hash, role=role)
    session.add(user)
    await session.commit()
    await session.refresh(user)
    return user.to_dict()

async def update_user_with_mobile_token(session, email: str, mobile_token: str):
    stmt = select(User).filter(User.email == email)
    result = await session.execute(stmt)
    user_database = result.scalar()
    user = await session.get(User, int(user_database.id))
    user.mobile_token = mobile_token
    await session.commit()
    return mobile_token

