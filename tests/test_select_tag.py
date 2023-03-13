import pytest
from Tags import *


def test_select_with_options():
    expected_value = """
<select name='Auto' id='New_car_select_id'>
    <option value='BMW'>BMW</option>
    <option value='Škoda'>Škoda</option>
    <option value='Audi'>Audi</option>
    <option value='Hyundai'>Hyundai</option>
</select>
""".strip().replace("    ", "\t")
    select = SelectTag(
        name= "Auto", 
        id= "New_car_select_id", 
        options= ("BMW", "Škoda", "Audi", "Hyundai")
        )

    assert str(select) == expected_value


def test_select_without_options():
    expected_value = """
<select name='Auto' id='New_car_select_id'></select>
""".strip().replace("    ", "\t")
    select = SelectTag(
        name= "Auto", 
        id="New_car_select_id"
        )
    assert str(select) == expected_value

    