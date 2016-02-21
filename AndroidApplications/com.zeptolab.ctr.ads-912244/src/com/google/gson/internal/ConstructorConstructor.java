package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public final class ConstructorConstructor {
    private final Map instanceCreators;

    class AnonymousClass_12 implements ObjectConstructor {
        private final UnsafeAllocator unsafeAllocator;
        final /* synthetic */ Class val$rawType;
        final /* synthetic */ Type val$type;

        AnonymousClass_12(Class cls, Type type) {
            this.val$rawType = cls;
            this.val$type = type;
            this.unsafeAllocator = UnsafeAllocator.create();
        }

        public Object construct() {
            try {
                return this.unsafeAllocator.newInstance(this.val$rawType);
            } catch (Exception e) {
                throw new RuntimeException("Unable to invoke no-args constructor for " + this.val$type + ". " + "Register an InstanceCreator with Gson for this type may fix this problem.", e);
            }
        }
    }

    class AnonymousClass_1 implements ObjectConstructor {
        final /* synthetic */ Type val$type;
        final /* synthetic */ InstanceCreator val$typeCreator;

        AnonymousClass_1(InstanceCreator instanceCreator, Type type) {
            this.val$typeCreator = instanceCreator;
            this.val$type = type;
        }

        public Object construct() {
            return this.val$typeCreator.createInstance(this.val$type);
        }
    }

    class AnonymousClass_2 implements ObjectConstructor {
        final /* synthetic */ InstanceCreator val$rawTypeCreator;
        final /* synthetic */ Type val$type;

        AnonymousClass_2(InstanceCreator instanceCreator, Type type) {
            this.val$rawTypeCreator = instanceCreator;
            this.val$type = type;
        }

        public Object construct() {
            return this.val$rawTypeCreator.createInstance(this.val$type);
        }
    }

    class AnonymousClass_3 implements ObjectConstructor {
        final /* synthetic */ Constructor val$constructor;

        AnonymousClass_3(Constructor constructor) {
            this.val$constructor = constructor;
        }

        public Object construct() {
            try {
                return this.val$constructor.newInstance(null);
            } catch (InstantiationException e) {
                throw new RuntimeException("Failed to invoke " + this.val$constructor + " with no args", e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to invoke " + this.val$constructor + " with no args", e2.getTargetException());
            } catch (IllegalAccessException e3) {
                throw new AssertionError(e3);
            }
        }
    }

    class AnonymousClass_5 implements ObjectConstructor {
        final /* synthetic */ Type val$type;

        AnonymousClass_5(Type type) {
            this.val$type = type;
        }

        public Object construct() {
            if (this.val$type instanceof ParameterizedType) {
                Type type = ((ParameterizedType) this.val$type).getActualTypeArguments()[0];
                if (type instanceof Class) {
                    return EnumSet.noneOf((Class) type);
                }
                throw new JsonIOException("Invalid EnumSet type: " + this.val$type.toString());
            } else {
                throw new JsonIOException("Invalid EnumSet type: " + this.val$type.toString());
            }
        }
    }

    public ConstructorConstructor(Map map) {
        this.instanceCreators = map;
    }

    private ObjectConstructor newDefaultConstructor(Class cls) {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new AnonymousClass_3(declaredConstructor);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    private ObjectConstructor newDefaultImplementationConstructor(Type type, Class cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new ObjectConstructor() {
                    public Object construct() {
                        return new TreeSet();
                    }
                };
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new AnonymousClass_5(type);
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new ObjectConstructor() {
                    public Object construct() {
                        return new LinkedHashSet();
                    }
                };
            }
            return Queue.class.isAssignableFrom(cls) ? new ObjectConstructor() {
                public Object construct() {
                    return new LinkedList();
                }
            } : new ObjectConstructor() {
                public Object construct() {
                    return new ArrayList();
                }
            };
        } else if (!Map.class.isAssignableFrom(cls)) {
            return null;
        } else {
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new ObjectConstructor() {
                    public Object construct() {
                        return new TreeMap();
                    }
                };
            }
            return (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new ObjectConstructor() {
                public Object construct() {
                    return new LinkedTreeMap();
                }
            } : new ObjectConstructor() {
                public Object construct() {
                    return new LinkedHashMap();
                }
            };
        }
    }

    private ObjectConstructor newUnsafeAllocator(Type type, Class cls) {
        return new AnonymousClass_12(cls, type);
    }

    public ObjectConstructor get(TypeToken typeToken) {
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        InstanceCreator instanceCreator = (InstanceCreator) this.instanceCreators.get(type);
        if (instanceCreator != null) {
            return new AnonymousClass_1(instanceCreator, type);
        }
        instanceCreator = (InstanceCreator) this.instanceCreators.get(rawType);
        if (instanceCreator != null) {
            return new AnonymousClass_2(instanceCreator, type);
        }
        ObjectConstructor newDefaultConstructor = newDefaultConstructor(rawType);
        if (newDefaultConstructor != null) {
            return newDefaultConstructor;
        }
        newDefaultConstructor = newDefaultImplementationConstructor(type, rawType);
        return newDefaultConstructor == null ? newUnsafeAllocator(type, rawType) : newDefaultConstructor;
    }

    public String toString() {
        return this.instanceCreators.toString();
    }
}