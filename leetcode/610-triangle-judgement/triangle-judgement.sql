select x, y, z,
       case when x >= y and x >= z and x < y+z then 'Yes'
            when y >= x and y >= z and y < x+z then 'Yes'
            when z >= x and z >= y and z < x+y then 'Yes'
            else 'No' end triangle
from Triangle
