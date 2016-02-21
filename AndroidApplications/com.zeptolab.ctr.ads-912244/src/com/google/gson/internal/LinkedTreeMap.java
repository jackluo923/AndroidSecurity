package com.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

public final class LinkedTreeMap extends AbstractMap implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Comparator NATURAL_ORDER;
    Comparator comparator;
    private EntrySet entrySet;
    final Node header;
    private KeySet keySet;
    int modCount;
    Node root;
    int size;

    private abstract class LinkedTreeMapIterator implements Iterator {
        int expectedModCount;
        Node lastReturned;
        Node next;

        private LinkedTreeMapIterator() {
            this.next = LinkedTreeMap.this.header.next;
            this.lastReturned = null;
            this.expectedModCount = LinkedTreeMap.this.modCount;
        }

        public final boolean hasNext() {
            return this.next != LinkedTreeMap.this.header;
        }

        final Node nextNode() {
            Node node = this.next;
            if (node == LinkedTreeMap.this.header) {
                throw new NoSuchElementException();
            } else if (LinkedTreeMap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            } else {
                this.next = node.next;
                this.lastReturned = node;
                return node;
            }
        }

        public final void remove() {
            if (this.lastReturned == null) {
                throw new IllegalStateException();
            }
            LinkedTreeMap.this.removeInternal(this.lastReturned, true);
            this.lastReturned = null;
            this.expectedModCount = LinkedTreeMap.this.modCount;
        }
    }

    class EntrySet extends AbstractSet {
        EntrySet() {
        }

        public void clear() {
            LinkedTreeMap.this.clear();
        }

        public boolean contains(Object obj) {
            return obj instanceof Entry && LinkedTreeMap.this.findByEntry((Entry) obj) != null;
        }

        public Iterator iterator() {
            return new LinkedTreeMapIterator() {
                {
                    super(null);
                }

                public Entry next() {
                    return nextNode();
                }
            };
        }

        public boolean remove(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Node findByEntry = LinkedTreeMap.this.findByEntry((Entry) obj);
            if (findByEntry == null) {
                return false;
            }
            LinkedTreeMap.this.removeInternal(findByEntry, true);
            return true;
        }

        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    class KeySet extends AbstractSet {
        KeySet() {
        }

        public void clear() {
            LinkedTreeMap.this.clear();
        }

        public boolean contains(Object obj) {
            return LinkedTreeMap.this.containsKey(obj);
        }

        public Iterator iterator() {
            return new LinkedTreeMapIterator() {
                {
                    super(null);
                }

                public Object next() {
                    return nextNode().key;
                }
            };
        }

        public boolean remove(Object obj) {
            return LinkedTreeMap.this.removeInternalByKey(obj) != null;
        }

        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    static final class Node implements Entry {
        int height;
        final Object key;
        Node left;
        Node next;
        Node parent;
        Node prev;
        Node right;
        Object value;

        Node() {
            this.key = null;
            this.prev = this;
            this.next = this;
        }

        Node(Node node, Object obj, Node node2, Node node3) {
            this.parent = node;
            this.key = obj;
            this.height = 1;
            this.next = node2;
            this.prev = node3;
            node3.next = this;
            node2.prev = this;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            if (this.key == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!this.key.equals(entry.getKey())) {
                return false;
            }
            if (this.value == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!this.value.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        public Node first() {
            Node node = this.left;
            while (node != null) {
                this = node;
                node = node.left;
            }
            return this;
        }

        public Object getKey() {
            return this.key;
        }

        public Object getValue() {
            return this.value;
        }

        public int hashCode() {
            int hashCode;
            int i = 0;
            hashCode = this.key == null ? 0 : this.key.hashCode();
            if (this.value != null) {
                i = this.value.hashCode();
            }
            return hashCode ^ i;
        }

        public Node last() {
            Node node = this.right;
            while (node != null) {
                this = node;
                node = node.right;
            }
            return this;
        }

        public Object setValue(Object obj) {
            Object obj2 = this.value;
            this.value = obj;
            return obj2;
        }

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    static {
        $assertionsDisabled = !LinkedTreeMap.class.desiredAssertionStatus();
        NATURAL_ORDER = new Comparator() {
            public int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public LinkedTreeMap() {
        this(NATURAL_ORDER);
    }

    public LinkedTreeMap(Comparator comparator) {
        this.size = 0;
        this.modCount = 0;
        this.header = new Node();
        if (comparator == null) {
            comparator = NATURAL_ORDER;
        }
        this.comparator = comparator;
    }

    private boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void rebalance(Node node, boolean z) {
        while (node != null) {
            int i;
            int i2;
            Node node2 = node.left;
            Node node3 = node.right;
            i = node2 != null ? node2.height : 0;
            i2 = node3 != null ? node3.height : 0;
            int i3 = i - i2;
            Node node4;
            if (i3 == -2) {
                node2 = node3.left;
                node4 = node3.right;
                i2 = (node2 != null ? node2.height : 0) - (node4 != null ? node4.height : 0);
                if (i2 == -1 || (i2 == 0 && !z)) {
                    rotateLeft(node);
                } else if ($assertionsDisabled || i2 == 1) {
                    rotateRight(node3);
                    rotateLeft(node);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                node3 = node2.left;
                node4 = node2.right;
                i2 = (node3 != null ? node3.height : 0) - (node4 != null ? node4.height : 0);
                if (i2 == 1 || (i2 == 0 && !z)) {
                    rotateRight(node);
                } else if ($assertionsDisabled || i2 == -1) {
                    rotateLeft(node2);
                    rotateRight(node);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                node.height = i + 1;
                if (z) {
                    return;
                }
            } else if ($assertionsDisabled || i3 == -1 || i3 == 1) {
                node.height = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            } else {
                throw new AssertionError();
            }
            node = node.parent;
        }
    }

    private void replaceInParent(Node node, Node node2) {
        Node node3 = node.parent;
        node.parent = null;
        if (node2 != null) {
            node2.parent = node3;
        }
        if (node3 == null) {
            this.root = node2;
        } else if (node3.left == node) {
            node3.left = node2;
        } else if ($assertionsDisabled || node3.right == node) {
            node3.right = node2;
        } else {
            throw new AssertionError();
        }
    }

    private void rotateLeft(Node node) {
        int i = 0;
        Node node2 = node.left;
        Node node3 = node.right;
        Node node4 = node3.left;
        Node node5 = node3.right;
        node.right = node4;
        if (node4 != null) {
            node4.parent = node;
        }
        replaceInParent(node, node3);
        node3.left = node;
        node.parent = node3;
        node.height = Math.max(node2 != null ? node2.height : 0, node4 != null ? node4.height : 0) + 1;
        int i2 = node.height;
        if (node5 != null) {
            i = node5.height;
        }
        node3.height = Math.max(i2, i) + 1;
    }

    private void rotateRight(Node node) {
        int i = 0;
        Node node2 = node.left;
        Node node3 = node.right;
        Node node4 = node2.left;
        Node node5 = node2.right;
        node.left = node5;
        if (node5 != null) {
            node5.parent = node;
        }
        replaceInParent(node, node2);
        node2.right = node;
        node.parent = node2;
        node.height = Math.max(node3 != null ? node3.height : 0, node5 != null ? node5.height : 0) + 1;
        int i2 = node.height;
        if (node4 != null) {
            i = node4.height;
        }
        node2.height = Math.max(i2, i) + 1;
    }

    private Object writeReplace() {
        return new LinkedHashMap(this);
    }

    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        Node node = this.header;
        node.prev = node;
        node.next = node;
    }

    public boolean containsKey(Object obj) {
        return findByObject(obj) != null;
    }

    public Set entrySet() {
        Set set = this.entrySet;
        if (set != null) {
            return set;
        }
        set = new EntrySet();
        this.entrySet = set;
        return set;
    }

    Node find(Object obj, boolean z) {
        Node node;
        int i;
        Comparator comparator = this.comparator;
        Node node2 = this.root;
        if (node2 != null) {
            Comparable comparable;
            comparable = comparator == NATURAL_ORDER ? (Comparable) obj : null;
            while (true) {
                int compareTo;
                compareTo = comparable != null ? comparable.compareTo(node2.key) : comparator.compare(obj, node2.key);
                if (compareTo == 0) {
                    return node2;
                }
                Node node3;
                node3 = compareTo < 0 ? node2.left : node2.right;
                if (node3 == null) {
                    int i2 = compareTo;
                    node = node2;
                    i = i2;
                } else {
                    node2 = node3;
                }
            }
        } else {
            node = node2;
            i = 0;
        }
        if (!z) {
            return null;
        }
        Node node4;
        Node node5 = this.header;
        if (node != null) {
            node4 = new Node(node, obj, node5, node5.prev);
            if (i < 0) {
                node.left = node4;
            } else {
                node.right = node4;
            }
            rebalance(node, true);
        } else if (comparator != NATURAL_ORDER || obj instanceof Comparable) {
            node4 = new Node(node, obj, node5, node5.prev);
            this.root = node4;
        } else {
            throw new ClassCastException(obj.getClass().getName() + " is not Comparable");
        }
        this.size++;
        this.modCount++;
        return node4;
    }

    Node findByEntry(Entry entry) {
        Node findByObject = findByObject(entry.getKey());
        int i = (findByObject == null || !equal(findByObject.value, entry.getValue())) ? 0 : 1;
        return i != 0 ? findByObject : null;
    }

    Node findByObject(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return find(obj, false);
        } catch (ClassCastException e) {
            return null;
        }
    }

    public Object get(Object obj) {
        Node findByObject = findByObject(obj);
        return findByObject != null ? findByObject.value : null;
    }

    public Set keySet() {
        Set set = this.keySet;
        if (set != null) {
            return set;
        }
        set = new KeySet();
        this.keySet = set;
        return set;
    }

    public Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        Node find = find(obj, true);
        Object obj3 = find.value;
        find.value = obj2;
        return obj3;
    }

    public Object remove(Object obj) {
        Node removeInternalByKey = removeInternalByKey(obj);
        return removeInternalByKey != null ? removeInternalByKey.value : null;
    }

    void removeInternal(Node node, boolean z) {
        int i = 0;
        if (z) {
            node.prev.next = node.next;
            node.next.prev = node.prev;
        }
        Node node2 = node.left;
        Node node3 = node.right;
        Node node4 = node.parent;
        if (node2 == null || node3 == null) {
            if (node2 != null) {
                replaceInParent(node, node2);
                node.left = null;
            } else if (node3 != null) {
                replaceInParent(node, node3);
                node.right = null;
            } else {
                replaceInParent(node, null);
            }
            rebalance(node4, false);
            this.size--;
            this.modCount++;
        } else {
            int i2;
            node2 = node2.height > node3.height ? node2.last() : node3.first();
            removeInternal(node2, false);
            node4 = node.left;
            if (node4 != null) {
                i2 = node4.height;
                node2.left = node4;
                node4.parent = node2;
                node.left = null;
            } else {
                i2 = 0;
            }
            node4 = node.right;
            if (node4 != null) {
                i = node4.height;
                node2.right = node4;
                node4.parent = node2;
                node.right = null;
            }
            node2.height = Math.max(i2, i) + 1;
            replaceInParent(node, node2);
        }
    }

    Node removeInternalByKey(Object obj) {
        Node findByObject = findByObject(obj);
        if (findByObject != null) {
            removeInternal(findByObject, true);
        }
        return findByObject;
    }

    public int size() {
        return this.size;
    }
}