from pydantic import BaseModel


class Tuple2In(BaseModel):
    a: int
    b: int


class Tuple2Out(BaseModel):
    sum: int
    product: int
