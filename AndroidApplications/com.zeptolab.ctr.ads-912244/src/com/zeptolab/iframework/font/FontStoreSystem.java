package com.zeptolab.iframework.font;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class FontStoreSystem {
    ArrayList bitmapChars;
    protected float charOffset;
    Map charRow;
    ArrayList fontrows;
    protected float rowHeight;
    FontRowRegenerator rowRegenerator;
    protected int rowWidth;
    protected int rows;

    public FontStoreSystem(int i, int i2, float f, float f2, FontRowRegenerator fontRowRegenerator) {
        this.fontrows = new ArrayList();
        this.charRow = new HashMap();
        this.bitmapChars = new ArrayList();
        this.rows = i;
        this.rowWidth = i2;
        this.rowHeight = f;
        this.charOffset = f2;
        addFontRows();
        this.rowRegenerator = fontRowRegenerator;
    }

    public void addFontRows() {
        this.bitmapChars.add(new ArrayList());
        int i = 0;
        while (i < this.rows) {
            this.fontrows.add(new FontRow((float) this.rowWidth));
            i++;
        }
    }

    public int getBitmapIndex(FontRow fontRow) {
        return this.fontrows.indexOf(fontRow) / this.rows;
    }

    public int getBitmapIndex(Character ch) {
        return getBitmapIndex((FontRow) this.charRow.get(ch));
    }

    public int getCharactersNumberOfBitmap(int i) {
        return ((ArrayList) this.bitmapChars.get(i)).size();
    }

    public float getDrawWidth(Character ch) {
        return ((FontRow) this.charRow.get(ch)).getWidth(ch);
    }

    public float getDrawX(Character ch) {
        return ((FontRow) this.charRow.get(ch)).getDrawX(ch);
    }

    public int getQuadIndex(Character ch) {
        return ((ArrayList) this.bitmapChars.get(getBitmapIndex(ch))).indexOf(ch);
    }

    public float[] getQuadsOfBitmap(int i) {
        float[] fArr = new float[(getCharactersNumberOfBitmap(i) * 4)];
        Iterator it = ((ArrayList) this.bitmapChars.get(i)).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Character ch = (Character) it.next();
            FontRow fontRow = (FontRow) this.charRow.get(ch);
            fArr[i2 + 0] = fontRow.getDrawX(ch) - this.charOffset;
            fArr[i2 + 1] = ((float) getRowIndex(fontRow)) * this.rowHeight;
            fArr[i2 + 2] = fontRow.getWidth(ch);
            fArr[i2 + 3] = this.rowHeight;
            i2 += 4;
        }
        return fArr;
    }

    public int getRowIndex(FontRow fontRow) {
        return this.fontrows.indexOf(fontRow) % this.rows;
    }

    public int getRowIndex(Character ch) {
        return getRowIndex((FontRow) this.charRow.get(ch));
    }

    public boolean isCharacterStored(Character ch) {
        return this.charRow.containsKey(ch);
    }

    public void registerLetter(Character ch, float f) {
        float f2 = f + 2.0f * this.charOffset;
        FontRow fontRow = null;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        Iterator it = this.fontrows.iterator();
        while (it.hasNext()) {
            FontRow fontRow2 = (FontRow) it.next();
            if (fontRow2.isEnough(f2)) {
                registerLetterTo(fontRow2, ch, f);
                return;
            } else {
                FontRow fontRow3;
                float f4;
                float freeSpace = fontRow2.freeSpace();
                if (f3 < freeSpace) {
                    float f5 = freeSpace;
                    fontRow3 = fontRow2;
                    f4 = f5;
                } else {
                    f4 = f3;
                    fontRow3 = fontRow;
                }
                f3 = f4;
                fontRow = fontRow3;
            }
        }
        if (f3 > f2 && fontRow != null) {
            this.rowRegenerator.regenerateRow(fontRow);
            if (fontRow.isEnough(f2)) {
                registerLetterTo(fontRow, ch, f);
                return;
            }
        }
        addFontRows();
        registerLetter(ch, f);
    }

    public void registerLetterTo(FontRow fontRow, Character ch, float f) {
        fontRow.registerLetter(ch, f, this.charOffset);
        this.charRow.put(ch, fontRow);
        ((ArrayList) this.bitmapChars.get(getBitmapIndex(ch))).add(ch);
    }

    public void releaseLetter(Character ch) {
        ((FontRow) this.charRow.get(ch)).releaseLetter(ch);
    }

    public void remove(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Character ch = (Character) it.next();
            ((ArrayList) this.bitmapChars.get(getBitmapIndex(ch))).remove(ch);
            this.charRow.remove(ch);
        }
    }

    public void retainLetter(Character ch) {
        ((FontRow) this.charRow.get(ch)).retainLetter(ch);
    }
}