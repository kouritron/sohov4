from fastapi import APIRouter
from sohov4.models.math import Tuple2In, Tuple2Out

router = APIRouter()


@router.post("/compute", response_model=Tuple2Out)
def compute(numbers: Tuple2In):
    result = Tuple2Out(sum=numbers.a + numbers.b, product=numbers.a * numbers.b)
    return result
