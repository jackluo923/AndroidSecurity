package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.util.Log;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;

// compiled from: ProGuard
public class PropertyValuesHolder implements Cloneable {
    private static Class[] DOUBLE_VARIANTS;
    private static Class[] FLOAT_VARIANTS;
    private static Class[] INTEGER_VARIANTS;
    private static final TypeEvaluator sFloatEvaluator;
    private static final HashMap sGetterPropertyMap;
    private static final TypeEvaluator sIntEvaluator;
    private static final HashMap sSetterPropertyMap;
    private Object mAnimatedValue;
    private TypeEvaluator mEvaluator;
    private Method mGetter;
    KeyframeSet mKeyframeSet;
    final ReentrantReadWriteLock mPropertyMapLock;
    String mPropertyName;
    Method mSetter;
    final Object[] mTmpValueArray;
    Class mValueType;

    // compiled from: ProGuard
    class FloatPropertyValuesHolder extends PropertyValuesHolder {
        float mFloatAnimatedValue;
        FloatKeyframeSet mFloatKeyframeSet;

        public FloatPropertyValuesHolder(String str, FloatKeyframeSet floatKeyframeSet) {
            super(null);
            this.mValueType = Float.TYPE;
            this.mKeyframeSet = floatKeyframeSet;
            this.mFloatKeyframeSet = (FloatKeyframeSet) this.mKeyframeSet;
        }

        public FloatPropertyValuesHolder(String str, float... fArr) {
            super(null);
            setFloatValues(fArr);
        }

        void calculateValue(float f) {
            this.mFloatAnimatedValue = this.mFloatKeyframeSet.getFloatValue(f);
        }

        public FloatPropertyValuesHolder clone() {
            FloatPropertyValuesHolder floatPropertyValuesHolder = (FloatPropertyValuesHolder) super.clone();
            floatPropertyValuesHolder.mFloatKeyframeSet = (FloatKeyframeSet) floatPropertyValuesHolder.mKeyframeSet;
            return floatPropertyValuesHolder;
        }

        Object getAnimatedValue() {
            return Float.valueOf(this.mFloatAnimatedValue);
        }

        void setAnimatedValue(Object obj) {
            if (this.mSetter != null) {
                try {
                    this.mTmpValueArray[0] = Float.valueOf(this.mFloatAnimatedValue);
                    this.mSetter.invoke(obj, this.mTmpValueArray);
                } catch (InvocationTargetException e) {
                    Log.e("PropertyValuesHolder", e.toString());
                } catch (IllegalAccessException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                }
            }
        }

        public void setFloatValues(float... fArr) {
            super.setFloatValues(fArr);
            this.mFloatKeyframeSet = (FloatKeyframeSet) this.mKeyframeSet;
        }

        void setupSetter(Class cls) {
            super.setupSetter(cls);
        }
    }

    // compiled from: ProGuard
    class IntPropertyValuesHolder extends PropertyValuesHolder {
        int mIntAnimatedValue;
        IntKeyframeSet mIntKeyframeSet;

        public IntPropertyValuesHolder(String str, IntKeyframeSet intKeyframeSet) {
            super(null);
            this.mValueType = Integer.TYPE;
            this.mKeyframeSet = intKeyframeSet;
            this.mIntKeyframeSet = (IntKeyframeSet) this.mKeyframeSet;
        }

        public IntPropertyValuesHolder(String str, int... iArr) {
            super(null);
            setIntValues(iArr);
        }

        void calculateValue(float f) {
            this.mIntAnimatedValue = this.mIntKeyframeSet.getIntValue(f);
        }

        public IntPropertyValuesHolder clone() {
            IntPropertyValuesHolder intPropertyValuesHolder = (IntPropertyValuesHolder) super.clone();
            intPropertyValuesHolder.mIntKeyframeSet = (IntKeyframeSet) intPropertyValuesHolder.mKeyframeSet;
            return intPropertyValuesHolder;
        }

        Object getAnimatedValue() {
            return Integer.valueOf(this.mIntAnimatedValue);
        }

        void setAnimatedValue(Object obj) {
            if (this.mSetter != null) {
                try {
                    this.mTmpValueArray[0] = Integer.valueOf(this.mIntAnimatedValue);
                    this.mSetter.invoke(obj, this.mTmpValueArray);
                } catch (InvocationTargetException e) {
                    Log.e("PropertyValuesHolder", e.toString());
                } catch (IllegalAccessException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                }
            }
        }

        public void setIntValues(int... iArr) {
            super.setIntValues(iArr);
            this.mIntKeyframeSet = (IntKeyframeSet) this.mKeyframeSet;
        }

        void setupSetter(Class cls) {
            super.setupSetter(cls);
        }
    }

    static {
        sIntEvaluator = new IntEvaluator();
        sFloatEvaluator = new FloatEvaluator();
        FLOAT_VARIANTS = new Class[]{Float.TYPE, Float.class, Double.TYPE, Integer.TYPE, Double.class, Integer.class};
        INTEGER_VARIANTS = new Class[]{Integer.TYPE, Integer.class, Float.TYPE, Double.TYPE, Float.class, Double.class};
        DOUBLE_VARIANTS = new Class[]{Double.TYPE, Double.class, Float.TYPE, Integer.TYPE, Float.class, Integer.class};
        sSetterPropertyMap = new HashMap();
        sGetterPropertyMap = new HashMap();
    }

    private PropertyValuesHolder(String str) {
        this.mSetter = null;
        this.mGetter = null;
        this.mKeyframeSet = null;
        this.mPropertyMapLock = new ReentrantReadWriteLock();
        this.mTmpValueArray = new Object[1];
        this.mPropertyName = str;
    }

    static String getMethodName(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return str;
        }
        char toUpperCase = Character.toUpperCase(str2.charAt(0));
        return new StringBuilder(String.valueOf(str)).append(toUpperCase).append(str2.substring(1)).toString();
    }

    private Method getPropertyFunction(Class cls, String str, Class cls2) {
        String methodName = getMethodName(str, this.mPropertyName);
        if (cls2 == null) {
            try {
                return cls.getMethod(methodName, null);
            } catch (NoSuchMethodException e) {
                Log.e("PropertyValuesHolder", new StringBuilder(String.valueOf(cls.getSimpleName())).append(" - ").append("Couldn't find no-arg method for property ").append(this.mPropertyName).append(": ").append(e).toString());
                return null;
            }
        }
        ?[] Arr;
        Class[] clsArr = new Class[1];
        if (this.mValueType.equals(Float.class)) {
            Arr = FLOAT_VARIANTS;
        } else if (this.mValueType.equals(Integer.class)) {
            Arr = INTEGER_VARIANTS;
        } else if (this.mValueType.equals(Double.class)) {
            Arr = DOUBLE_VARIANTS;
        } else {
            Arr = new ?[]{this.mValueType};
        }
        int length = Arr.length;
        int i = 0;
        while (i < length) {
            Class cls3 = Arr[i];
            clsArr[0] = cls3;
            try {
                Method method = cls.getMethod(methodName, clsArr);
                this.mValueType = cls3;
                return method;
            } catch (NoSuchMethodException e2) {
                i++;
            }
        }
        Log.e("PropertyValuesHolder", new StringBuilder("Couldn't find ").append(str).append("ter property ").append(this.mPropertyName).append(" for ").append(cls.getSimpleName()).append(" with value type ").append(this.mValueType).toString());
        return null;
    }

    public static PropertyValuesHolder ofFloat(String str, float... fArr) {
        return new FloatPropertyValuesHolder(str, fArr);
    }

    public static PropertyValuesHolder ofInt(String str, int... iArr) {
        return new IntPropertyValuesHolder(str, iArr);
    }

    public static PropertyValuesHolder ofKeyframe(String str, Keyframe... keyframeArr) {
        KeyframeSet ofKeyframe = KeyframeSet.ofKeyframe(keyframeArr);
        if (ofKeyframe instanceof IntKeyframeSet) {
            return new IntPropertyValuesHolder(str, (IntKeyframeSet) ofKeyframe);
        }
        if (ofKeyframe instanceof FloatKeyframeSet) {
            return new FloatPropertyValuesHolder(str, (FloatKeyframeSet) ofKeyframe);
        }
        PropertyValuesHolder propertyValuesHolder = new PropertyValuesHolder(str);
        propertyValuesHolder.mKeyframeSet = ofKeyframe;
        propertyValuesHolder.mValueType = keyframeArr[0].getType();
        return propertyValuesHolder;
    }

    public static PropertyValuesHolder ofObject(String str, TypeEvaluator typeEvaluator, Object... objArr) {
        PropertyValuesHolder propertyValuesHolder = new PropertyValuesHolder(str);
        propertyValuesHolder.setObjectValues(objArr);
        propertyValuesHolder.setEvaluator(typeEvaluator);
        return propertyValuesHolder;
    }

    private void setupGetter(Class cls) {
        this.mGetter = setupSetterOrGetter(cls, sGetterPropertyMap, "get", null);
    }

    private Method setupSetterOrGetter(Class cls, HashMap hashMap, String str, Class cls2) {
        Method method;
        Method method2 = null;
        this.mPropertyMapLock.writeLock().lock();
        HashMap hashMap2 = (HashMap) hashMap.get(cls);
        if (hashMap2 != null) {
            method2 = (Method) hashMap2.get(this.mPropertyName);
        }
        if (method2 == null) {
            method2 = getPropertyFunction(cls, str, cls2);
            if (hashMap2 == null) {
                hashMap2 = new HashMap();
                hashMap.put(cls, hashMap2);
            }
            hashMap2.put(this.mPropertyName, method2);
            method = method2;
        } else {
            method = method2;
        }
        this.mPropertyMapLock.writeLock().unlock();
        return method;
    }

    private void setupValue(Object obj, Keyframe keyframe) {
        try {
            if (this.mGetter == null) {
                setupGetter(obj.getClass());
            }
            keyframe.setValue(this.mGetter.invoke(obj, new Object[0]));
        } catch (InvocationTargetException e) {
            Log.e("PropertyValuesHolder", e.toString());
        } catch (IllegalAccessException e2) {
            Log.e("PropertyValuesHolder", e2.toString());
        }
    }

    void calculateValue(float f) {
        this.mAnimatedValue = this.mKeyframeSet.getValue(f);
    }

    public PropertyValuesHolder clone() {
        try {
            PropertyValuesHolder propertyValuesHolder = (PropertyValuesHolder) super.clone();
            propertyValuesHolder.mPropertyName = this.mPropertyName;
            propertyValuesHolder.mKeyframeSet = this.mKeyframeSet.clone();
            propertyValuesHolder.mEvaluator = this.mEvaluator;
            return propertyValuesHolder;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    Object getAnimatedValue() {
        return this.mAnimatedValue;
    }

    public String getPropertyName() {
        return this.mPropertyName;
    }

    void init() {
        if (this.mEvaluator == null) {
            TypeEvaluator typeEvaluator;
            if (this.mValueType == Integer.class) {
                typeEvaluator = sIntEvaluator;
            } else if (this.mValueType == Float.class) {
                typeEvaluator = sFloatEvaluator;
            } else {
                typeEvaluator = null;
            }
            this.mEvaluator = typeEvaluator;
        }
        if (this.mEvaluator != null) {
            this.mKeyframeSet.setEvaluator(this.mEvaluator);
        }
    }

    void setAnimatedValue(Object obj) {
        if (this.mSetter != null) {
            try {
                this.mTmpValueArray[0] = getAnimatedValue();
                this.mSetter.invoke(obj, this.mTmpValueArray);
            } catch (InvocationTargetException e) {
                Log.e("PropertyValuesHolder", e.toString());
            } catch (IllegalAccessException e2) {
                Log.e("PropertyValuesHolder", e2.toString());
            }
        }
    }

    public void setEvaluator(TypeEvaluator typeEvaluator) {
        this.mEvaluator = typeEvaluator;
        this.mKeyframeSet.setEvaluator(typeEvaluator);
    }

    public void setFloatValues(float... fArr) {
        this.mValueType = Float.TYPE;
        this.mKeyframeSet = KeyframeSet.ofFloat(fArr);
    }

    public void setIntValues(int... iArr) {
        this.mValueType = Integer.TYPE;
        this.mKeyframeSet = KeyframeSet.ofInt(iArr);
    }

    public void setKeyframes(Keyframe... keyframeArr) {
        int i = 0;
        int length = keyframeArr.length;
        Keyframe[] keyframeArr2 = new Keyframe[Math.max(length, IcsLinearLayout.SHOW_DIVIDER_MIDDLE)];
        this.mValueType = keyframeArr[0].getType();
        while (i < length) {
            keyframeArr2[i] = keyframeArr[i];
            i++;
        }
        this.mKeyframeSet = new KeyframeSet(keyframeArr2);
    }

    public void setObjectValues(Object... objArr) {
        this.mValueType = objArr[0].getClass();
        this.mKeyframeSet = KeyframeSet.ofObject(objArr);
    }

    public void setPropertyName(String str) {
        this.mPropertyName = str;
    }

    void setupEndValue(Object obj) {
        setupValue(obj, (Keyframe) this.mKeyframeSet.mKeyframes.get(this.mKeyframeSet.mKeyframes.size() - 1));
    }

    void setupSetter(Class cls) {
        this.mSetter = setupSetterOrGetter(cls, sSetterPropertyMap, "set", this.mValueType);
    }

    void setupSetterAndGetter(Object obj) {
        Class cls = obj.getClass();
        if (this.mSetter == null) {
            setupSetter(cls);
        }
        Iterator it = this.mKeyframeSet.mKeyframes.iterator();
        while (it.hasNext()) {
            Keyframe keyframe = (Keyframe) it.next();
            if (!keyframe.hasValue()) {
                if (this.mGetter == null) {
                    setupGetter(cls);
                }
                try {
                    keyframe.setValue(this.mGetter.invoke(obj, new Object[0]));
                } catch (InvocationTargetException e) {
                    Log.e("PropertyValuesHolder", e.toString());
                } catch (IllegalAccessException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                }
            }
        }
    }

    void setupStartValue(Object obj) {
        setupValue(obj, (Keyframe) this.mKeyframeSet.mKeyframes.get(0));
    }

    public String toString() {
        return new StringBuilder(String.valueOf(this.mPropertyName)).append(": ").append(this.mKeyframeSet.toString()).toString();
    }
}