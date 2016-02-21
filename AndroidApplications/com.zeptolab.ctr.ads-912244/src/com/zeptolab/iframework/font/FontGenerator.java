package com.zeptolab.iframework.font;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.millennialmedia.android.MMException;
import com.zeptolab.iframework.font.FontConfigs.FontConfig;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;

public class FontGenerator implements FontRowRegenerator {
    static int registers;
    protected ArrayList bitmaps;
    protected Canvas canvas;
    protected FontConfig config;
    protected float lineHeight;
    protected int rows;
    protected FontStoreSystem store;
    protected int textureSize;

    static {
        registers = 0;
    }

    public FontGenerator(FontConfig fontConfig) {
        this.canvas = new Canvas();
        this.textureSize = 256;
        this.bitmaps = new ArrayList();
        this.config = fontConfig;
        this.lineHeight = this.config.size + this.config.o_top + this.config.o_bottom;
        this.rows = (int) (((float) this.textureSize) / this.lineHeight);
        this.store = new FontStoreSystem(this.rows, this.textureSize, this.lineHeight, this.config.o_xTotal, this);
    }

    private void cleanBackground(Bitmap bitmap) {
        this.canvas.setBitmap(bitmap);
        this.canvas.drawRect(BitmapDescriptorFactory.HUE_RED, 0.0f, (float) this.textureSize, (float) this.textureSize, this.config.backgroundPaint);
    }

    private void cleanRow(Bitmap bitmap, int i) {
        this.canvas.setBitmap(bitmap);
        this.canvas.drawRect(BitmapDescriptorFactory.HUE_RED, ((float) i) * this.lineHeight, (float) this.textureSize, ((float) (i + 1)) * this.lineHeight, this.config.backgroundPaint);
    }

    private void drawSymbol(Bitmap bitmap, Character ch, float f, int i) {
        this.canvas.setBitmap(bitmap);
        String toString = ch.toString();
        float f2 = ((float) (i + 1)) * (this.config.o_top + this.config.size) + ((float) i) * this.config.o_bottom - this.lineHeight * 0.035f;
        if (this.config.strokePaint != null) {
            this.canvas.drawText(toString, f, f2, this.config.strokePaint);
        }
        this.canvas.drawText(toString, f, f2, this.config.letterPaint);
    }

    public Bitmap getBitmap(int i) {
        return (Bitmap) this.bitmaps.get(i);
    }

    public int getBitmapForCharacter(char c) {
        return this.store.getBitmapIndex(Character.valueOf(c));
    }

    public byte[] getBytesOfBitmap(int i) {
        Bitmap bitmap = (Bitmap) this.bitmaps.get(i);
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(CompressFormat.PNG, MMException.UNKNOWN_ERROR, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public float getCharOffset() {
        return this.config.charoff;
    }

    public float getCharWidth(char c) {
        return this.store.getDrawWidth(Character.valueOf(c));
    }

    public int getCharactersNumberOfBitmap(int i) {
        return this.store.getCharactersNumberOfBitmap(i);
    }

    public float getFontHeight() {
        return this.lineHeight;
    }

    public float getLineOffset() {
        return this.config.lineoff;
    }

    public int getQuadForCharacter(char c) {
        return this.store.getQuadIndex(Character.valueOf(c));
    }

    public float[] getQuadsOfBitmap(int i) {
        return this.store.getQuadsOfBitmap(i);
    }

    public float getSpaceWidth() {
        return this.config.spacewidth;
    }

    public void regenerateRow(FontRow fontRow) {
        int bitmapIndex = this.store.getBitmapIndex(fontRow);
        int rowIndex = this.store.getRowIndex(fontRow);
        Bitmap bitmap = (Bitmap) this.bitmaps.get(bitmapIndex);
        this.store.remove(fontRow.clean());
        Map characters = fontRow.getCharacters();
        cleanRow(bitmap, rowIndex);
        float f = this.config.o_xTotal;
        Iterator it = characters.entrySet().iterator();
        float f2 = f;
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            drawSymbol(bitmap, (Character) entry.getKey(), f2, rowIndex);
            fontRow.setDrawX((Character) entry.getKey(), f2);
            f2 = ((CharParams) entry.getValue()).w + f2;
        }
        fontRow.setRightWidth(f2 - this.config.o_xTotal);
    }

    public int[] registerLetters(String str) {
        int i = 0;
        Set treeSet = new TreeSet();
        char[] toCharArray = str.toCharArray();
        int length = toCharArray.length;
        int i2 = 0;
        while (i2 < length) {
            Character valueOf = Character.valueOf(toCharArray[i2]);
            if (!Character.isWhitespace(valueOf.charValue())) {
                if (this.store.isCharacterStored(valueOf)) {
                    this.store.retainLetter(valueOf);
                } else {
                    this.store.registerLetter(valueOf, (this.config.strokePaint != null ? this.config.strokePaint : this.config.letterPaint).measureText(valueOf.toString()));
                    int bitmapIndex = this.store.getBitmapIndex(valueOf);
                    int rowIndex = this.store.getRowIndex(valueOf);
                    float drawX = this.store.getDrawX(valueOf);
                    while (this.bitmaps.size() <= bitmapIndex) {
                        Bitmap createBitmap = Bitmap.createBitmap(this.textureSize, this.textureSize, Config.ARGB_8888);
                        cleanBackground(createBitmap);
                        this.bitmaps.add(createBitmap);
                    }
                    Bitmap bitmap = (Bitmap) this.bitmaps.get(bitmapIndex);
                    treeSet.add(Integer.valueOf(this.bitmaps.indexOf(bitmap)));
                    drawSymbol(bitmap, valueOf, drawX, rowIndex);
                }
            }
            i2++;
        }
        int[] iArr = new int[(treeSet.size() + 1)];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            i2 = i + 1;
            iArr[i] = ((Integer) it.next()).intValue();
            i = i2;
        }
        iArr[i] = -1;
        return iArr;
    }

    public void unregisterLetters(String str) {
        char[] toCharArray = str.toCharArray();
        int length = toCharArray.length;
        int i = 0;
        while (i < length) {
            Character valueOf = Character.valueOf(toCharArray[i]);
            if (!Character.isWhitespace(valueOf.charValue()) && this.store.isCharacterStored(valueOf)) {
                this.store.releaseLetter(valueOf);
            }
            i++;
        }
    }
}