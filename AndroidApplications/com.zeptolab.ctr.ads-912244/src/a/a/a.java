package a.a;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Queue;

public class a extends AbstractCollection implements Serializable, Cloneable, Queue {
    private static final int d = 8;
    private static final long e = 2340985798034038923L;
    private transient Object[] a;
    private transient int b;
    private transient int c;

    private class a implements Iterator {
        private int b;
        private int c;
        private int d;

        private a() {
            this.b = a.this.b;
            this.c = a.this.c;
            this.d = -1;
        }

        public boolean hasNext() {
            return this.b != this.c;
        }

        public Object next() {
            if (this.b == this.c) {
                throw new NoSuchElementException();
            }
            Object obj = a.this[this.b];
            if (a.this.c != this.c || obj == null) {
                throw new ConcurrentModificationException();
            }
            this.d = this.b;
            this.b = (this.b + 1) & (a.this.length - 1);
            return obj;
        }

        public void remove() {
            if (this.d < 0) {
                throw new IllegalStateException();
            }
            if (a.this.b(this.d)) {
                this.b = (this.b - 1) & (a.this.length - 1);
                this.c = a.this.c;
            }
            this.d = -1;
        }
    }

    public a() {
        this.a = new Object[16];
    }

    public a(int i) {
        a(i);
    }

    public a(Collection collection) {
        a(collection.size());
        addAll(collection);
    }

    private void a_(int i) {
        int i2 = d;
        if (i >= 8) {
            i2 = (i >>> 1) | i;
            i2 |= i2 >>> 2;
            i2 |= i2 >>> 4;
            i2 |= i2 >>> 8;
            i2 = i2 | (i2 >>> 16) + 1;
            if (i2 < 0) {
                i2 >>>= 1;
            }
        }
        this.a = new Object[i2];
    }

    private void a_(ObjectInputStream objectInputStream) {
        int i = 0;
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        a(readInt);
        this.b = 0;
        this.c = readInt;
        while (i < readInt) {
            this.a[i] = objectInputStream.readObject();
            i++;
        }
    }

    private void a_(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        int length = this.a.length - 1;
        int i = this.b;
        while (i != this.c) {
            objectOutputStream.writeObject(this.a[i]);
            i = (i + 1) & length;
        }
    }

    private void b() {
        int i = this.b;
        int length = this.a.length;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 < 0) {
            throw new IllegalStateException("Sorry, queue too big");
        }
        Object obj = new Object[i3];
        System.arraycopy(this.a, i, obj, 0, i2);
        System.arraycopy(this.a, 0, obj, i2, i);
        this.a = obj;
        this.b = 0;
        this.c = length;
    }

    private boolean b(int i) {
        Object obj = this.a;
        int length = obj.length - 1;
        int i2 = this.b;
        int i3 = this.c;
        int i4 = (i - i2) & length;
        int i5 = (i3 - i) & length;
        if (i4 >= ((i3 - i2) & length)) {
            throw new ConcurrentModificationException();
        } else if (i4 < i5) {
            if (i2 <= i) {
                System.arraycopy(obj, i2, obj, i2 + 1, i4);
            } else {
                System.arraycopy(obj, 0, obj, 1, i);
                obj[0] = obj[length];
                System.arraycopy(obj, i2, obj, i2 + 1, length - i2);
            }
            obj[i2] = 0;
            this.b = (i2 + 1) & length;
            return false;
        } else {
            if (i < i3) {
                System.arraycopy(obj, i + 1, obj, i, i5);
                this.c = i3 - 1;
            } else {
                System.arraycopy(obj, i + 1, obj, i, length - i);
                obj[length] = obj[0];
                System.arraycopy(obj, 1, obj, 0, i3);
                this.c = (i3 - 1) & length;
            }
            return true;
        }
    }

    public a a_() {
        try {
            a aVar = (a) super.clone();
            Object[] objArr = (Object[]) Array.newInstance(this.a.getClass().getComponentType(), this.a.length);
            System.arraycopy(this.a, 0, objArr, 0, this.a.length);
            aVar.a = objArr;
            return aVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public boolean add(Object obj) {
        if (obj == null) {
            throw new NullPointerException("e == null");
        }
        this.a[this.c] = obj;
        int length = (this.c + 1) & (this.a.length - 1);
        this.c = length;
        if (length == this.b) {
            b();
        }
        return true;
    }

    public void clear() {
        int i = this.b;
        int i2 = this.c;
        if (i != i2) {
            this.c = 0;
            this.b = 0;
            int length = this.a.length - 1;
            do {
                this.a[i] = null;
                i = (i + 1) & length;
            } while (i != i2);
        }
    }

    public /* synthetic */ Object clone() {
        return a();
    }

    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.a.length - 1;
        int i = this.b;
        while (true) {
            Object obj2 = this.a[i];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                return true;
            }
            i = (i + 1) & length;
        }
    }

    public Object element() {
        Object obj = this.a[this.b];
        if (obj != null) {
            return obj;
        }
        throw new NoSuchElementException();
    }

    public boolean isEmpty() {
        return this.b == this.c;
    }

    public Iterator iterator() {
        return new a(this, null);
    }

    public boolean offer(Object obj) {
        return add(obj);
    }

    public Object peek() {
        return this.a[this.b];
    }

    public Object poll() {
        int i = this.b;
        Object obj = this.a[i];
        if (obj == null) {
            return null;
        }
        this.a[i] = null;
        this.b = (i + 1) & (this.a.length - 1);
        return obj;
    }

    public Object remove() {
        Object poll = poll();
        if (poll != null) {
            return poll;
        }
        throw new NoSuchElementException();
    }

    public boolean remove(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.a.length - 1;
        int i = this.b;
        while (true) {
            Object obj2 = this.a[i];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                b(i);
                return true;
            } else {
                i = (i + 1) & length;
            }
        }
    }

    public int size() {
        return (this.c - this.b) & (this.a.length - 1);
    }

    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    public Object[] toArray(Object obj) {
        Object obj2;
        int size = size();
        if (obj.length < size) {
            Object[] objArr = (Object[]) Array.newInstance(obj.getClass().getComponentType(), size);
        } else {
            obj2 = obj;
        }
        if (this.b < this.c) {
            System.arraycopy(this.a, this.b, obj2, 0, size());
        } else if (this.b > this.c) {
            int length = this.a.length - this.b;
            System.arraycopy(this.a, this.b, obj2, 0, length);
            System.arraycopy(this.a, 0, obj2, length, this.c);
        }
        if (obj2.length > size) {
            obj2[size] = 0;
        }
        return obj2;
    }
}