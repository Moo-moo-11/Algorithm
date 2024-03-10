class Solution {
    fun romanToInt(s: String): Int {
        var a = s
        var b = 0

        if ("IV" in a){
        b += 4
        a = a.replace("IV","")
        }

        if ("IX" in a){
        b += 9
        a = a.replace("IX","")
        }

        if ("XL" in a){
        b += 40
        a = a.replace("XL","")
        }

        if ("XC" in a){
        b += 90
        a = a.replace("XC","")
        }

        if ("CD" in a){
        b += 400
        a = a.replace("CD","")
        }

        if ("CM" in a){
        b += 900
        a = a.replace("CM","")
        }

        if ("I" in a){
            b += 1 * a.count { it == 'I' }
            a = a.replace("I","")
        }

        if ("V" in a){
            b += 5 * a.count { it == 'V' }
            a = a.replace("V","")
        }

        if ("X" in a){
            b += 10 * a.count { it == 'X' }
            a = a.replace("X","")
        }

        if ("L" in a){
            b += 50 * a.count { it == 'L' }
            a = a.replace("L","")
        }

        if ("C" in a){
            b += 100 * a.count { it == 'C' }
            a = a.replace("C","")
        }

        if ("D" in a){
            b += 500 * a.count { it == 'D' }
            a = a.replace("D","")
        }

        if ("M" in a){
            b += 1000 * a.count { it == 'M' }
            a = a.replace("M","")
        }

        return b
    }
}