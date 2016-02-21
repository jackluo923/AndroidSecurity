package com.IQzone.postitial.obfuscated;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class pd implements pg {
    private static final ql a;
    private final File b;
    private final File c;
    private final oo d;
    private final TreeMap e;
    private final px f;
    private final oo g;

    static {
        a = new ql();
    }

    public pd(File file, File file2, oo ooVar) {
        this.d = new on();
        this.e = new TreeMap();
        this.f = new pe(this);
        if (!new File(file.getParent()).exists()) {
            new File(file.getParent()).mkdirs();
        }
        if (file.isDirectory()) {
            throw new RuntimeException(new StringBuilder("file location must not be a directory ").append(file).toString());
        }
        file2.delete();
        if (!file2.exists()) {
            file2.mkdirs();
        }
        if (file2.isDirectory()) {
            this.b = file;
            this.c = file2;
            this.g = ooVar;
        } else {
            throw new RuntimeException(new StringBuilder("file location must be a directory ").append(file2).toString());
        }
    }

    private Object a(RandomAccessFile randomAccessFile, int i, int i2) {
        int i3 = i2 - i;
        byte[] bArr = new byte[2048];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i4 = 0;
        while (i4 < i3) {
            int length = bArr.length + i4 >= i3 ? i3 - i4 : bArr.length;
            if (length != 0) {
                length = randomAccessFile.read(bArr, 0, length);
                if (length != 0) {
                    if (length == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, length);
                    if (byteArrayOutputStream.size() != length) {
                        throw new oi(new StringBuilder("output buffer wrong size - out:").append(byteArrayOutputStream.size()).append(", read:").append(length).toString());
                    }
                    i4 = length + i4;
                } else {
                    throw new RuntimeException("ERROR");
                }
            } else {
                throw new RuntimeException("ERROR");
            }
        }
        byteArrayOutputStream.flush();
        Object a = this.g.a(byteArrayOutputStream.toByteArray());
        byteArrayOutputStream.close();
        return a;
    }

    private static void a(RandomAccessFile randomAccessFile, int i, int i2, OutputStream outputStream) {
        int i3 = i2 - i;
        byte[] bArr = new byte[2048];
        int i4 = 0;
        while (i4 < i3) {
            int length = bArr.length + i4 >= i3 ? i3 - i4 : bArr.length;
            if (length == 0) {
                break;
            }
            length = randomAccessFile.read(bArr, 0, length);
            if (length == 0) {
                throw new RuntimeException("ERROR");
            } else if (length == -1) {
                ql qlVar = a;
                break;
            } else {
                outputStream.write(bArr, 0, length);
                i4 = length + i4;
            }
        }
        outputStream.flush();
        outputStream.close();
    }

    private Set c(int i) {
        ql qlVar;
        try {
            Set hashSet = new HashSet();
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.b, "rws");
            try {
                randomAccessFile.seek((long) i);
                Object obj = new Object[4];
                int read = randomAccessFile.read(obj);
                int intValue = ((Integer) this.d.b(obj)).intValue();
                if (intValue < -1 || intValue == 0 || ((long) intValue) > randomAccessFile.length()) {
                    throw new oh();
                } else if (read != obj.length) {
                    throw new oi("bytes read is different from intended");
                } else {
                    int i2 = 0;
                    while (i2 + 4 >= intValue || randomAccessFile.read(obj) == 4) {
                        read = i2 + 4;
                        i2 = ((Integer) this.d.b(obj)).intValue();
                        if (read != 4 || i2 >= 0) {
                            if (read <= 4 || i2 >= 0) {
                                if (i2 > intValue) {
                                    throw new oi("<1> data is corrupt");
                                }
                                int i3 = intValue - read;
                                Object a = a(randomAccessFile, i3, i3 + i2);
                                i2 += read;
                                if (randomAccessFile.read(obj) != obj.length) {
                                    throw new oi("bytes read is wrong length");
                                }
                                read = i2 + 4;
                                if (read > intValue) {
                                    throw new oi("<3> data is corrupt");
                                }
                                i2 = ((Integer) this.d.b(obj)).intValue();
                                if (read + i2 > intValue) {
                                    throw new oi("<4> data is corrupt");
                                }
                                OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                int i4 = intValue - read;
                                a(randomAccessFile, i4, i4 + i2, byteArrayOutputStream);
                                hashSet.add(new og(a, new ByteArrayInputStream(byteArrayOutputStream.toByteArray())));
                                i2 += read;
                            }
                            randomAccessFile.close();
                            return hashSet;
                        } else {
                            randomAccessFile.close();
                            return null;
                        }
                    }
                    throw new oi("bytes read is wrong length");
                }
            } catch (oh e) {
                qlVar = a;
                throw new oi("Data has been corrupted");
            } catch (Throwable th) {
            }
        } catch (FileNotFoundException e2) {
            qlVar = a;
            throw new oi("failed to allocate new bucket");
        } catch (om e3) {
            qlVar = a;
            throw new oi("failed to allocate new bucket3");
        } catch (IOException e4) {
            qlVar = a;
            throw new oi("failed to allocate new bucket2");
        }
    }

    private int d(int i) {
        ql qlVar;
        SortedMap tailMap = this.e.tailMap(Integer.valueOf(i));
        Set set;
        if (tailMap.size() == 0) {
            int i2 = 0;
            while (true) {
                try {
                    int i3;
                    RandomAccessFile randomAccessFile = new RandomAccessFile(this.b, "rws");
                    if (((long) (i2 + 4)) >= randomAccessFile.length()) {
                        randomAccessFile.close();
                        i3 = -1;
                    } else {
                        Object obj = new Object[4];
                        randomAccessFile.seek((long) i2);
                        randomAccessFile.read(obj);
                        int intValue = ((Integer) this.d.b(obj)).intValue();
                        if (intValue >= 0 && ((long) (intValue + i2)) <= randomAccessFile.length()) {
                            randomAccessFile.read(obj);
                            if (((Integer) this.d.b(obj)).intValue() != -1 || intValue < 0 || intValue < i) {
                                set = (Set) this.e.get(Integer.valueOf(intValue));
                                if (set == null) {
                                    set = new HashSet();
                                    this.e.put(Integer.valueOf(intValue), set);
                                }
                                set.add(Integer.valueOf(i2));
                            } else {
                                randomAccessFile.close();
                                i3 = i2;
                            }
                            i2 += Math.abs(intValue) + 8;
                            randomAccessFile.close();
                        }
                        throw new oi(new StringBuilder("seg is corrupt ").append(i2).toString());
                    }
                    if (i3 >= 0) {
                        return i3;
                    }
                    try {
                        RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.b, "rws");
                        long length = randomAccessFile2.length();
                        int i4 = (int) length;
                        byte[] bArr = (byte[]) this.d.a(Integer.valueOf(i));
                        randomAccessFile2.seek(length);
                        randomAccessFile2.write(bArr);
                        bArr = (byte[]) this.d.a(Integer.valueOf(-1));
                        randomAccessFile2.write(bArr);
                        randomAccessFile2.seek(length + ((long) i) + 4);
                        randomAccessFile2.write(bArr);
                        randomAccessFile2.close();
                        return i4;
                    } catch (FileNotFoundException e) {
                        qlVar = a;
                        throw new oi("failed to allocate new bucket");
                    } catch (om e2) {
                        qlVar = a;
                        throw new oi("failed to allocate new bucket3");
                    } catch (IOException e3) {
                        qlVar = a;
                        throw new oi("failed to allocate new bucket2");
                    }
                } catch (FileNotFoundException e4) {
                    qlVar = a;
                    throw new oi("failed to allocate new bucket");
                } catch (om e5) {
                    qlVar = a;
                    throw new oi("failed to allocate new bucket3");
                } catch (IOException e6) {
                    qlVar = a;
                    throw new oi("failed to allocate new bucket2");
                }
            }
        } else {
            set = (Set) tailMap.get(tailMap.firstKey());
            if (set.size() == 1) {
                this.e.remove(tailMap.firstKey());
            }
            return ((Integer) set.iterator().next()).intValue();
        }
    }

    public final int a(int i, Set set) {
        ql qlVar;
        if (set.size() == 0 || set == null) {
            throw new oj("You must pass in data for set. Use erase instead");
        }
        int read;
        int d;
        Set hashSet = new HashSet();
        Map hashMap = new HashMap();
        Iterator it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            try {
                File file = new File(this.c, (String) this.f.a());
                hashSet.add(new og(entry.getKey(), file));
                try {
                    OutputStream fileOutputStream = new FileOutputStream(file);
                    fh.a((InputStream) entry.getValue(), fileOutputStream);
                    fileOutputStream.close();
                    if (file.exists()) {
                        byte[] bArr = (byte[]) this.g.b(entry.getKey());
                        i2 = ((int) (((long) i2) + file.length())) + bArr.length + 8;
                        hashMap.put(entry.getKey(), bArr);
                    } else {
                        throw new oi("Failed to allocate temp file");
                    }
                } catch (IOException e) {
                    qlVar = a;
                    throw new oi("Failed to allocate temp file");
                } catch (om e2) {
                    qlVar = a;
                    throw new oi("Failed to serialize when allocating temp file");
                }
            } catch (om e3) {
                throw new oi("failed to get temp file name");
            }
        }
        if (i >= 0) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.b, "rws");
                long length = randomAccessFile.length();
                if (((long) (i + 4)) >= length) {
                    throw new ok(new StringBuilder("invalid index ").append(i).append(" ").append(length).toString());
                }
                Object obj = new Object[4];
                randomAccessFile.seek((long) i);
                read = randomAccessFile.read(obj);
                int intValue = ((Integer) this.d.b(obj)).intValue();
                if (read != obj.length) {
                    throw new oi("<1> set failed, bytes read is wrong");
                }
                if (intValue < i2) {
                    randomAccessFile.write((byte[]) this.d.a(Integer.valueOf(-1)));
                    Set set2 = (Set) this.e.get(Integer.valueOf(intValue));
                    if (set2 == null) {
                        set2 = new HashSet();
                        this.e.put(Integer.valueOf(intValue), set2);
                    }
                    set2.add(Integer.valueOf(i));
                    d = d(i2);
                } else {
                    d = i;
                }
                randomAccessFile.close();
                read = d;
            } catch (FileNotFoundException e4) {
                qlVar = a;
                throw new oi("failed to allocate new bucket");
            } catch (om e5) {
                qlVar = a;
                throw new oi("failed to allocate new bucket3");
            } catch (IOException e6) {
                qlVar = a;
                throw new oi("failed to allocate new bucket2");
            }
        } else {
            read = d(i2);
        }
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.b, "rws");
            long length2 = randomAccessFile2.length();
            if (((long) (read + 4)) >= length2) {
                throw new ok(new StringBuilder("invalid index ").append(read + 4).append(" ").append(length2).append(this.b.length()).toString());
            }
            Object obj2 = new Object[4];
            randomAccessFile2.seek((long) read);
            i2 = randomAccessFile2.read(obj2);
            int intValue2 = ((Integer) this.d.b(obj2)).intValue();
            if (i2 != obj2.length) {
                throw new oi("<2> set failed, bytes read is wrong");
            }
            randomAccessFile2.seek((long) (read + 4 + 4));
            Iterator it2 = hashSet.iterator();
            ?[] Arr = null;
            int i3 = 0;
            while (it2.hasNext()) {
                Entry entry2 = (Entry) it2.next();
                byte[] bArr2 = (byte[]) hashMap.get(entry2.getKey());
                if (Arr == null) {
                    byte[] bArr3 = bArr2;
                } else {
                    randomAccessFile2.write((byte[]) this.d.a(Integer.valueOf(bArr2.length)));
                    ?[] Arr2 = Arr;
                }
                int length3 = bArr2.length + 8 + i3;
                randomAccessFile2.write(bArr2);
                i3 = (int) ((File) entry2.getValue()).length();
                randomAccessFile2.write((byte[]) this.d.a(Integer.valueOf(i3)));
                if (((File) entry2.getValue()).exists()) {
                    FileInputStream fileInputStream = new FileInputStream((File) entry2.getValue());
                    byte[] bArr4 = new byte[2048];
                    d = 0;
                    while (true) {
                        int read2 = fileInputStream.read(bArr4);
                        if (read2 > 0) {
                            d += read2;
                            if (d > i3) {
                                throw new oi("File system is lying");
                            }
                            length3 += read2;
                            randomAccessFile2.write(bArr4, 0, read2);
                        } else {
                            fileInputStream.close();
                            ((File) entry2.getValue()).delete();
                            i3 = length3;
                            Arr = Arr2;
                        }
                    }
                } else {
                    throw new oi(new StringBuilder("file doesn't exist ").append(((File) entry2.getValue()).getAbsolutePath()).toString());
                }
            }
            if (intValue2 >= i3 + 4) {
                randomAccessFile2.write((byte[]) this.d.a(Integer.valueOf(-1)));
            }
            if (Arr != null) {
                randomAccessFile2.seek((long) (read + 4));
                randomAccessFile2.write((byte[]) this.d.a(Integer.valueOf(Arr.length)));
            }
            randomAccessFile2.close();
            return read;
        } catch (FileNotFoundException e7) {
            qlVar = a;
            throw new oi("failed to allocate new bucket");
        } catch (om e8) {
            qlVar = a;
            throw new oi("failed to allocate new bucket3");
        } catch (IOException e9) {
            qlVar = a;
            throw new oi("failed to allocate new bucket2");
        } catch (Throwable th) {
        }
    }

    public final Set a(int i) {
        ql qlVar;
        try {
            Set hashSet = new HashSet();
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.b, "rws");
            try {
                randomAccessFile.seek((long) i);
                Object obj = new Object[4];
                int read = randomAccessFile.read(obj);
                int intValue = ((Integer) this.d.b(obj)).intValue();
                if (intValue < -1 || intValue == 0 || ((long) intValue) > randomAccessFile.length()) {
                    throw new oh();
                } else if (intValue < 1000000) {
                    randomAccessFile.close();
                    Set c = c(i);
                    randomAccessFile.close();
                    return c;
                } else if (read != obj.length) {
                    throw new oi("bytes read is different from intended");
                } else {
                    read = 0;
                    while (read + 4 < intValue) {
                        File file = new File(this.c, (String) this.f.a());
                        if (randomAccessFile.read(obj) != 4) {
                            throw new oi("bytes read is wrong length");
                        }
                        read += 4;
                        int intValue2 = ((Integer) this.d.b(obj)).intValue();
                        if (read == 4 && intValue2 < 0) {
                            randomAccessFile.close();
                            return null;
                        } else if (read <= 4 || intValue2 >= 0) {
                            if (intValue2 > intValue) {
                                throw new oi("<1> data is corrupt");
                            }
                            int i2 = intValue - read;
                            Object a = a(randomAccessFile, i2, i2 + intValue2);
                            intValue2 += read;
                            if (randomAccessFile.read(obj) != obj.length) {
                                throw new oi("bytes read is wrong length");
                            }
                            read = intValue2 + 4;
                            if (read > intValue) {
                                throw new oi("<3> data is corrupt");
                            }
                            intValue2 = ((Integer) this.d.b(obj)).intValue();
                            if (read + intValue2 > intValue) {
                                throw new oi("<4> data is corrupt");
                            }
                            OutputStream fileOutputStream = new FileOutputStream(file);
                            int i3 = intValue - read;
                            a(randomAccessFile, i3, i3 + intValue2, fileOutputStream);
                            intValue2 += read;
                            fileOutputStream.close();
                            hashSet.add(new og(a, file));
                            read = intValue2;
                        }
                    }
                    break;
                    randomAccessFile.close();
                    Set hashSet2 = new HashSet();
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        Entry entry = (Entry) it.next();
                        hashSet2.add(new og(entry.getKey(), new pf(this, new FileInputStream((File) entry.getValue()), entry)));
                    }
                    return hashSet2;
                }
            } catch (oh e) {
                qlVar = a;
                throw new oi("Data has been corrupted");
            } catch (Throwable th) {
            }
        } catch (FileNotFoundException e2) {
            qlVar = a;
            throw new oi("failed to allocate new bucket");
        } catch (om e3) {
            qlVar = a;
            throw new oi("failed to allocate new bucket3");
        } catch (IOException e4) {
            qlVar = a;
            throw new oi("failed to allocate new bucket2");
        }
    }

    public final void a() {
        this.b.delete();
        this.e.clear();
    }

    public final void b(int i) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.b, "rws");
            randomAccessFile.seek((long) i);
            Object obj = new Object[4];
            int read = randomAccessFile.read(obj);
            int intValue = ((Integer) this.d.b(obj)).intValue();
            if (read != obj.length) {
                throw new oi("cannot erase, bytes read is incorrect");
            }
            randomAccessFile.write((byte[]) this.d.a(Integer.valueOf(-1)));
            Set set = (Set) this.e.get(Integer.valueOf(intValue));
            if (set == null) {
                set = new HashSet();
                this.e.put(Integer.valueOf(intValue), set);
            }
            set.add(Integer.valueOf(i));
            randomAccessFile.close();
        } catch (FileNotFoundException e) {
            ql qlVar = a;
            throw new oi("failed to allocate new bucket");
        } catch (om e2) {
            qlVar = a;
            throw new oi("failed to allocate new bucket3");
        } catch (IOException e3) {
            qlVar = a;
            throw new oi("failed to allocate new bucket2");
        }
    }
}