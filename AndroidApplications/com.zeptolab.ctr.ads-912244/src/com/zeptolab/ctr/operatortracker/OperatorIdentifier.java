package com.zeptolab.ctr.operatortracker;

import java.util.HashSet;

public class OperatorIdentifier {
    public String opCode;
    public HashSet opNameList;
    public String opTag;

    public OperatorIdentifier(String str, String str2, HashSet hashSet) {
        this.opTag = str;
        this.opCode = str2;
        this.opNameList = hashSet;
    }
}