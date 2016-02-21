import re
import string
import sys

# ==========================================================

def convertTypeSootToWALA(type):
    if type == "void":
        return "V"
    else:
        typeString = ""

        if type.endswith("[]"):
            type = type.replace("[]", "")
            typeString = "["

        if type == "boolean": #primitive data types
            typeString += "Z"
        elif type== "byte":
            typeString += "B"
        elif type == "char":
            typeString += "C"
        elif type == "double":
            typeString += "D"
        elif type == "float":
            typeString += "F"
        elif type == "int":
            typeString += "I"
        elif type == "long":
            typeString += "J"
        elif type == "short":
            typeString += "S"
        else: #object
            typeString += "L"+type.replace(".", "/")+";"

        return typeString

# ==========================================================
# This method converts a Soot method name to a method name that WALA recognizes.

def convertMethodSootToWALA(inLine):
    try:
        matchPartsObj = re.match(r"<(?P<className>[^:]+):\s+(?P<returnType>\S+)\s+(?P<methodName>[^(]+\()(?P<params>[^)]*)\)>", inLine)

        #Write class name
        outLine = matchPartsObj.group("className")
    
        #Method Name (includes the opening bracket)
        outLine += "."
        outLine += matchPartsObj.group("methodName")
        
        #Parameters
        paramStr = matchPartsObj.group("params")
        if paramStr != "":
            paramList = paramStr.split(",")
            for param in paramList:
                outLine += convertTypeSootToWALA(param)
    
        outLine += ")"

        #Return type
        retType = convertTypeSootToWALA(matchPartsObj.group("returnType"))
        outLine += retType
    except:
        return None

    return outLine

