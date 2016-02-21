package com.zeptolab.ctr.operatortracker.deutschetelekom;

import com.zeptolab.ctr.operatortracker.OperatorIdentifier;
import java.util.HashSet;

public class OperatorIdentifierDeutscheTelekom {
    private OperatorIdentifier opId;

    public OperatorIdentifierDeutscheTelekom() {
        HashSet hashSet = new HashSet();
        hashSet.add("Telekom");
        hashSet.add("Telekom.de");
        hashSet.add("Telekom D");
        hashSet.add("T-Mobile");
        hashSet.add("T-Mobile.de");
        hashSet.add("T-Mobile D");
        this.opId = new OperatorIdentifier("Deutsche Telekom", "26201", hashSet);
    }

    public OperatorIdentifier getOpId() {
        return this.opId;
    }
}