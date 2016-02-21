package com.zeptolab.iframework.font;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class FontRow {
    protected Map charsX;
    protected float readyForDelete;
    protected float rightWidth;
    protected float width;

    protected class CharParams {
        float drawX;
        int retains;
        float w;

        public CharParams(float f, float f2) {
            this.w = f;
            this.drawX = f2;
            this.retains = 1;
        }
    }

    public FontRow(float f) {
        this.charsX = new HashMap();
        this.width = f;
        this.rightWidth = 0.0f;
        this.readyForDelete = 0.0f;
    }

    public ArrayList clean() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.charsX.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (((CharParams) entry.getValue()).retains == 0) {
                arrayList.add(entry.getKey());
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.charsX.remove((Character) it2.next());
        }
        this.readyForDelete = 0.0f;
        return arrayList;
    }

    public float freeSpace() {
        return this.width - this.rightWidth + this.readyForDelete;
    }

    public Map getCharacters() {
        return this.charsX;
    }

    public float getDrawX(Character ch) {
        return ((CharParams) this.charsX.get(ch)).drawX;
    }

    public float getWidth(Character ch) {
        return ((CharParams) this.charsX.get(ch)).w;
    }

    public boolean isEnough(float f) {
        return this.width - this.rightWidth > f;
    }

    public void registerLetter(Character ch, float f, float f2) {
        float f3 = 2.0f * f2 + f;
        this.charsX.put(ch, new CharParams(f3, this.rightWidth + f2));
        this.rightWidth = f3 + this.rightWidth;
    }

    public void releaseLetter(Character ch) {
        CharParams charParams = (CharParams) this.charsX.get(ch);
        charParams.retains--;
        if (charParams.retains == 0) {
            this.readyForDelete = charParams.w + this.readyForDelete;
        }
    }

    public void retainLetter(Character ch) {
        CharParams charParams = (CharParams) this.charsX.get(ch);
        if (charParams.retains == 0) {
            this.readyForDelete -= charParams.w;
        }
        charParams.retains++;
    }

    public void setDrawX(Character ch, float f) {
        ((CharParams) this.charsX.get(ch)).drawX = f;
    }

    public void setRightWidth(float f) {
        this.rightWidth = f;
    }
}