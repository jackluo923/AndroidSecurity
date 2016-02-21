package android.support.v4.util;

import com.zeptolab.ctr.scorer.GoogleScorer;

public class LongSparseArray implements Cloneable {
    private static final Object DELETED;
    private boolean mGarbage;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;

    static {
        DELETED = new Object();
    }

    public LongSparseArray() {
        this(10);
    }

    public LongSparseArray(int i) {
        this.mGarbage = false;
        int idealLongArraySize = idealLongArraySize(i);
        this.mKeys = new long[idealLongArraySize];
        this.mValues = new Object[idealLongArraySize];
        this.mSize = 0;
    }

    private static int binarySearch(long[] jArr, int i, int i2, long j) {
        int i3 = i - 1;
        int i4 = i + i2;
        while (i4 - i3 > 1) {
            int i5 = (i4 + i3) / 2;
            if (jArr[i5] < j) {
                i3 = i5;
            } else {
                i4 = i5;
            }
        }
        if (i4 == i + i2) {
            return (i + i2) ^ -1;
        }
        return jArr[i4] != j ? i4 ^ -1 : i4;
    }

    private void gc() {
        int i = this.mSize;
        long[] jArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            Object obj = objArr[i2];
            if (obj != DELETED) {
                if (i2 != i3) {
                    jArr[i3] = jArr[i2];
                    objArr[i3] = obj;
                    objArr[i2] = null;
                }
                i3++;
            }
            i2++;
        }
        this.mGarbage = false;
        this.mSize = i3;
    }

    public static int idealByteArraySize(int i) {
        int i2 = GoogleScorer.CLIENT_APPSTATE;
        while (i2 < 32) {
            if (i <= 1 << i2 - 12) {
                return 1 << i2 - 12;
            }
            i2++;
        }
        return i;
    }

    public static int idealLongArraySize(int i) {
        return idealByteArraySize(i * 8) / 8;
    }

    public void append(long j, Object obj) {
        if (this.mSize == 0 || j > this.mKeys[this.mSize - 1]) {
            if (this.mGarbage && this.mSize >= this.mKeys.length) {
                gc();
            }
            int i = this.mSize;
            if (i >= this.mKeys.length) {
                int idealLongArraySize = idealLongArraySize(i + 1);
                Object obj2 = new Object[idealLongArraySize];
                Object obj3 = new Object[idealLongArraySize];
                System.arraycopy(this.mKeys, 0, obj2, 0, this.mKeys.length);
                System.arraycopy(this.mValues, 0, obj3, 0, this.mValues.length);
                this.mKeys = obj2;
                this.mValues = obj3;
            }
            this.mKeys[i] = j;
            this.mValues[i] = obj;
            this.mSize = i + 1;
        } else {
            put(j, obj);
        }
    }

    public void clear() {
        int i = this.mSize;
        Object[] objArr = this.mValues;
        int i2 = 0;
        while (i2 < i) {
            objArr[i2] = null;
            i2++;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    public LongSparseArray clone() {
        try {
            LongSparseArray longSparseArray = (LongSparseArray) super.clone();
            try {
                longSparseArray.mKeys = (long[]) this.mKeys.clone();
                longSparseArray.mValues = (Object[]) this.mValues.clone();
                return longSparseArray;
            } catch (CloneNotSupportedException e) {
                return longSparseArray;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public void delete(long j) {
        int binarySearch = binarySearch(this.mKeys, 0, this.mSize, j);
        if (binarySearch >= 0 && this.mValues[binarySearch] != DELETED) {
            this.mValues[binarySearch] = DELETED;
            this.mGarbage = true;
        }
    }

    public Object get(long j) {
        return get(j, null);
    }

    public Object get(long j, Object obj) {
        int binarySearch = binarySearch(this.mKeys, 0, this.mSize, j);
        return (binarySearch < 0 || this.mValues[binarySearch] == DELETED) ? obj : this.mValues[binarySearch];
    }

    public int indexOfKey(long j) {
        if (this.mGarbage) {
            gc();
        }
        return binarySearch(this.mKeys, 0, this.mSize, j);
    }

    public int indexOfValue(Object obj) {
        if (this.mGarbage) {
            gc();
        }
        int i = 0;
        while (i < this.mSize) {
            if (this.mValues[i] == obj) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public long keyAt(int i) {
        if (this.mGarbage) {
            gc();
        }
        return this.mKeys[i];
    }

    public void put(long j, Object obj) {
        int binarySearch = binarySearch(this.mKeys, 0, this.mSize, j);
        if (binarySearch >= 0) {
            this.mValues[binarySearch] = obj;
        } else {
            binarySearch ^= -1;
            if (binarySearch >= this.mSize || this.mValues[binarySearch] != DELETED) {
                if (this.mGarbage && this.mSize >= this.mKeys.length) {
                    gc();
                    binarySearch = binarySearch(this.mKeys, 0, this.mSize, j) ^ -1;
                }
                if (this.mSize >= this.mKeys.length) {
                    int idealLongArraySize = idealLongArraySize(this.mSize + 1);
                    Object obj2 = new Object[idealLongArraySize];
                    Object obj3 = new Object[idealLongArraySize];
                    System.arraycopy(this.mKeys, 0, obj2, 0, this.mKeys.length);
                    System.arraycopy(this.mValues, 0, obj3, 0, this.mValues.length);
                    this.mKeys = obj2;
                    this.mValues = obj3;
                }
                if (this.mSize - binarySearch != 0) {
                    System.arraycopy(this.mKeys, binarySearch, this.mKeys, binarySearch + 1, this.mSize - binarySearch);
                    System.arraycopy(this.mValues, binarySearch, this.mValues, binarySearch + 1, this.mSize - binarySearch);
                }
                this.mKeys[binarySearch] = j;
                this.mValues[binarySearch] = obj;
                this.mSize++;
            } else {
                this.mKeys[binarySearch] = j;
                this.mValues[binarySearch] = obj;
            }
        }
    }

    public void remove(long j) {
        delete(j);
    }

    public void removeAt(int i) {
        if (this.mValues[i] != DELETED) {
            this.mValues[i] = DELETED;
            this.mGarbage = true;
        }
    }

    public void setValueAt(int i, Object obj) {
        if (this.mGarbage) {
            gc();
        }
        this.mValues[i] = obj;
    }

    public int size() {
        if (this.mGarbage) {
            gc();
        }
        return this.mSize;
    }

    public Object valueAt(int i) {
        if (this.mGarbage) {
            gc();
        }
        return this.mValues[i];
    }
}