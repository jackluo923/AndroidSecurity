package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class AnimatorSet extends Animator {
    private ValueAnimator mDelayAnim;
    private long mDuration;
    private boolean mNeedsSort;
    private HashMap mNodeMap;
    private ArrayList mNodes;
    private ArrayList mPlayingSet;
    private AnimatorSetListener mSetListener;
    private ArrayList mSortedNodes;
    private long mStartDelay;
    private boolean mStarted;
    boolean mTerminated;

    class AnonymousClass_1 extends AnimatorListenerAdapter {
        boolean canceled;
        final /* synthetic */ ArrayList val$nodesToStart;

        AnonymousClass_1(ArrayList arrayList) {
            this.val$nodesToStart = arrayList;
            this.canceled = false;
        }

        public void onAnimationCancel(Animator animator) {
            this.canceled = true;
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.canceled) {
                int size = this.val$nodesToStart.size();
                int i = 0;
                while (i < size) {
                    Node node = (Node) this.val$nodesToStart.get(i);
                    node.animation.start();
                    AnimatorSet.this.mPlayingSet.add(node.animation);
                    i++;
                }
            }
        }
    }

    class AnimatorSetListener implements AnimatorListener {
        private AnimatorSet mAnimatorSet;

        AnimatorSetListener(AnimatorSet animatorSet) {
            this.mAnimatorSet = animatorSet;
        }

        public void onAnimationCancel(Animator animator) {
            if (!AnimatorSet.this.mTerminated && AnimatorSet.this.mPlayingSet.size() == 0 && AnimatorSet.this.mListeners != null) {
                int size = AnimatorSet.this.mListeners.size();
                int i = 0;
                while (i < size) {
                    ((AnimatorListener) AnimatorSet.this.mListeners.get(i)).onAnimationCancel(this.mAnimatorSet);
                    i++;
                }
            }
        }

        public void onAnimationEnd(Animator animator) {
            animator.removeListener(this);
            AnimatorSet.this.mPlayingSet.remove(animator);
            ((Node) this.mAnimatorSet.mNodeMap.get(animator)).done = true;
            if (!AnimatorSet.this.mTerminated) {
                boolean z;
                ArrayList access$200 = this.mAnimatorSet.mSortedNodes;
                int size = access$200.size();
                int i = 0;
                while (i < size) {
                    if (!((Node) access$200.get(i)).done) {
                        z = false;
                        break;
                    } else {
                        i++;
                    }
                }
                z = true;
                if (i != 0) {
                    if (AnimatorSet.this.mListeners != null) {
                        ArrayList arrayList = (ArrayList) AnimatorSet.this.mListeners.clone();
                        int size2 = arrayList.size();
                        i = 0;
                        while (i < size2) {
                            ((AnimatorListener) arrayList.get(i)).onAnimationEnd(this.mAnimatorSet);
                            i++;
                        }
                    }
                    this.mAnimatorSet.mStarted = false;
                }
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
        }
    }

    public class Builder {
        private Node mCurrentNode;

        Builder(Animator animator) {
            this.mCurrentNode = (Node) AnimatorSet.this.mNodeMap.get(animator);
            if (this.mCurrentNode == null) {
                this.mCurrentNode = new Node(animator);
                AnimatorSet.this.mNodeMap.put(animator, this.mCurrentNode);
                AnimatorSet.this.mNodes.add(this.mCurrentNode);
            }
        }

        public com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder after(long j) {
            Animator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
            ofFloat.setDuration(j);
            after(ofFloat);
            return this;
        }

        public com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder after(Animator animator) {
            Node node = (Node) AnimatorSet.this.mNodeMap.get(animator);
            if (node == null) {
                node = new Node(animator);
                AnimatorSet.this.mNodeMap.put(animator, node);
                AnimatorSet.this.mNodes.add(node);
            }
            this.mCurrentNode.addDependency(new Dependency(node, 1));
            return this;
        }

        public com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder before(Animator animator) {
            Node node = (Node) AnimatorSet.this.mNodeMap.get(animator);
            if (node == null) {
                node = new Node(animator);
                AnimatorSet.this.mNodeMap.put(animator, node);
                AnimatorSet.this.mNodes.add(node);
            }
            node.addDependency(new Dependency(this.mCurrentNode, 1));
            return this;
        }

        public com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder with(Animator animator) {
            Node node = (Node) AnimatorSet.this.mNodeMap.get(animator);
            if (node == null) {
                node = new Node(animator);
                AnimatorSet.this.mNodeMap.put(animator, node);
                AnimatorSet.this.mNodes.add(node);
            }
            node.addDependency(new Dependency(this.mCurrentNode, 0));
            return this;
        }
    }

    class Dependency {
        static final int AFTER = 1;
        static final int WITH = 0;
        public Node node;
        public int rule;

        public Dependency(Node node, int i) {
            this.node = node;
            this.rule = i;
        }
    }

    class DependencyListener implements AnimatorListener {
        private AnimatorSet mAnimatorSet;
        private Node mNode;
        private int mRule;

        public DependencyListener(AnimatorSet animatorSet, Node node, int i) {
            this.mAnimatorSet = animatorSet;
            this.mNode = node;
            this.mRule = i;
        }

        private void startIfReady(Animator animator) {
            if (!this.mAnimatorSet.mTerminated) {
                int size = this.mNode.tmpDependencies.size();
                int i = 0;
                while (i < size) {
                    Dependency dependency = (Dependency) this.mNode.tmpDependencies.get(i);
                    if (dependency.rule == this.mRule && dependency.node.animation == animator) {
                        animator.removeListener(this);
                        break;
                    } else {
                        i++;
                    }
                }
                Object obj = null;
                this.mNode.tmpDependencies.remove(obj);
                if (this.mNode.tmpDependencies.size() == 0) {
                    this.mNode.animation.start();
                    this.mAnimatorSet.mPlayingSet.add(this.mNode.animation);
                }
            }
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationEnd(Animator animator) {
            if (this.mRule == 1) {
                startIfReady(animator);
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
            if (this.mRule == 0) {
                startIfReady(animator);
            }
        }
    }

    class Node implements Cloneable {
        public Animator animation;
        public ArrayList dependencies;
        public boolean done;
        public ArrayList nodeDependencies;
        public ArrayList nodeDependents;
        public ArrayList tmpDependencies;

        public Node(Animator animator) {
            this.dependencies = null;
            this.tmpDependencies = null;
            this.nodeDependencies = null;
            this.nodeDependents = null;
            this.done = false;
            this.animation = animator;
        }

        public void addDependency(Dependency dependency) {
            if (this.dependencies == null) {
                this.dependencies = new ArrayList();
                this.nodeDependencies = new ArrayList();
            }
            this.dependencies.add(dependency);
            if (!this.nodeDependencies.contains(dependency.node)) {
                this.nodeDependencies.add(dependency.node);
            }
            Node node = dependency.node;
            if (node.nodeDependents == null) {
                node.nodeDependents = new ArrayList();
            }
            node.nodeDependents.add(this);
        }

        public Node clone() {
            try {
                Node node = (Node) super.clone();
                node.animation = this.animation.clone();
                return node;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError();
            }
        }
    }

    public AnimatorSet() {
        this.mPlayingSet = new ArrayList();
        this.mNodeMap = new HashMap();
        this.mNodes = new ArrayList();
        this.mSortedNodes = new ArrayList();
        this.mNeedsSort = true;
        this.mSetListener = null;
        this.mTerminated = false;
        this.mStarted = false;
        this.mStartDelay = 0;
        this.mDelayAnim = null;
        this.mDuration = -1;
    }

    private void sortNodes() {
        int size;
        Node node;
        int i;
        if (this.mNeedsSort) {
            this.mSortedNodes.clear();
            ArrayList arrayList = new ArrayList();
            size = this.mNodes.size();
            int i2 = 0;
            while (i2 < size) {
                node = (Node) this.mNodes.get(i2);
                if (node.dependencies == null || node.dependencies.size() == 0) {
                    arrayList.add(node);
                }
                i2++;
            }
            Object arrayList2 = new ArrayList();
            while (arrayList.size() > 0) {
                int size2 = arrayList.size();
                i = 0;
                while (i < size2) {
                    node = (Node) arrayList.get(i);
                    this.mSortedNodes.add(node);
                    if (node.nodeDependents != null) {
                        int size3 = node.nodeDependents.size();
                        size = 0;
                        while (size < size3) {
                            Node node2 = (Node) node.nodeDependents.get(size);
                            node2.nodeDependencies.remove(node);
                            if (node2.nodeDependencies.size() == 0) {
                                arrayList2.add(node2);
                            }
                            size++;
                        }
                    }
                    i++;
                }
                arrayList.clear();
                arrayList.addAll(arrayList2);
                arrayList2.clear();
            }
            this.mNeedsSort = false;
            if (this.mSortedNodes.size() != this.mNodes.size()) {
                throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
            }
        } else {
            int size4 = this.mNodes.size();
            i = 0;
            while (i < size4) {
                node = (Node) this.mNodes.get(i);
                if (node.dependencies != null && node.dependencies.size() > 0) {
                    int size5 = node.dependencies.size();
                    size = 0;
                    while (size < size5) {
                        Dependency dependency = (Dependency) node.dependencies.get(size);
                        if (node.nodeDependencies == null) {
                            node.nodeDependencies = new ArrayList();
                        }
                        if (!node.nodeDependencies.contains(dependency.node)) {
                            node.nodeDependencies.add(dependency.node);
                        }
                        size++;
                    }
                }
                node.done = false;
                i++;
            }
        }
    }

    public final void cancel() {
        this.mTerminated = true;
        if (isStarted()) {
            Iterator it;
            ArrayList arrayList;
            if (this.mListeners != null) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((AnimatorListener) it.next()).onAnimationCancel(this);
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            if (this.mDelayAnim != null && this.mDelayAnim.isRunning()) {
                this.mDelayAnim.cancel();
            } else if (this.mSortedNodes.size() > 0) {
                it = this.mSortedNodes.iterator();
                while (it.hasNext()) {
                    ((Node) it.next()).animation.cancel();
                }
            }
            if (arrayList != null) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((AnimatorListener) it2.next()).onAnimationEnd(this);
                }
            }
            this.mStarted = false;
        }
    }

    public final AnimatorSet clone() {
        AnimatorSet animatorSet = (AnimatorSet) super.clone();
        animatorSet.mNeedsSort = true;
        animatorSet.mTerminated = false;
        animatorSet.mStarted = false;
        animatorSet.mPlayingSet = new ArrayList();
        animatorSet.mNodeMap = new HashMap();
        animatorSet.mNodes = new ArrayList();
        animatorSet.mSortedNodes = new ArrayList();
        HashMap hashMap = new HashMap();
        Iterator it = this.mNodes.iterator();
        while (it.hasNext()) {
            Node node = (Node) it.next();
            Node clone = node.clone();
            hashMap.put(node, clone);
            animatorSet.mNodes.add(clone);
            animatorSet.mNodeMap.put(clone.animation, clone);
            clone.dependencies = null;
            clone.tmpDependencies = null;
            clone.nodeDependents = null;
            clone.nodeDependencies = null;
            ArrayList listeners = clone.animation.getListeners();
            if (listeners != null) {
                Iterator it2 = listeners.iterator();
                ArrayList arrayList = null;
                while (it2.hasNext()) {
                    AnimatorListener animatorListener = (AnimatorListener) it2.next();
                    if (animatorListener instanceof AnimatorSetListener) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(animatorListener);
                    }
                }
                if (arrayList != null) {
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        listeners.remove((AnimatorListener) it3.next());
                    }
                }
            }
        }
        it = this.mNodes.iterator();
        while (it.hasNext()) {
            node = (Node) it.next();
            clone = (Node) hashMap.get(node);
            if (node.dependencies != null) {
                Iterator it4 = node.dependencies.iterator();
                while (it4.hasNext()) {
                    Dependency dependency = (Dependency) it4.next();
                    clone.addDependency(new Dependency((Node) hashMap.get(dependency.node), dependency.rule));
                }
            }
        }
        return animatorSet;
    }

    public final void end() {
        this.mTerminated = true;
        if (isStarted()) {
            Iterator it;
            if (this.mSortedNodes.size() != this.mNodes.size()) {
                sortNodes();
                it = this.mSortedNodes.iterator();
                while (it.hasNext()) {
                    Node node = (Node) it.next();
                    if (this.mSetListener == null) {
                        this.mSetListener = new AnimatorSetListener(this);
                    }
                    node.animation.addListener(this.mSetListener);
                }
            }
            if (this.mDelayAnim != null) {
                this.mDelayAnim.cancel();
            }
            if (this.mSortedNodes.size() > 0) {
                it = this.mSortedNodes.iterator();
                while (it.hasNext()) {
                    ((Node) it.next()).animation.end();
                }
            }
            if (this.mListeners != null) {
                it = ((ArrayList) this.mListeners.clone()).iterator();
                while (it.hasNext()) {
                    ((AnimatorListener) it.next()).onAnimationEnd(this);
                }
            }
            this.mStarted = false;
        }
    }

    public final ArrayList getChildAnimations() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.mNodes.iterator();
        while (it.hasNext()) {
            arrayList.add(((Node) it.next()).animation);
        }
        return arrayList;
    }

    public final long getDuration() {
        return this.mDuration;
    }

    public final long getStartDelay() {
        return this.mStartDelay;
    }

    public final boolean isRunning() {
        Iterator it = this.mNodes.iterator();
        while (it.hasNext()) {
            if (((Node) it.next()).animation.isRunning()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isStarted() {
        return this.mStarted;
    }

    public final Builder play(Animator animator) {
        if (animator == null) {
            return null;
        }
        this.mNeedsSort = true;
        return new Builder(animator);
    }

    public final void playSequentially(List list) {
        if (list != null && list.size() > 0) {
            this.mNeedsSort = true;
            if (list.size() == 1) {
                play((Animator) list.get(0));
            } else {
                int i = 0;
                while (i < list.size() - 1) {
                    play((Animator) list.get(i)).before((Animator) list.get(i + 1));
                    i++;
                }
            }
        }
    }

    public final void playSequentially(Animator... animatorArr) {
        int i = 0;
        if (animatorArr != null) {
            this.mNeedsSort = true;
            if (animatorArr.length == 1) {
                play(animatorArr[0]);
            } else {
                while (i < animatorArr.length - 1) {
                    play(animatorArr[i]).before(animatorArr[i + 1]);
                    i++;
                }
            }
        }
    }

    public final void playTogether(Collection collection) {
        if (collection != null && collection.size() > 0) {
            this.mNeedsSort = true;
            Iterator it = collection.iterator();
            Builder builder = null;
            while (it.hasNext()) {
                Animator animator = (Animator) it.next();
                if (builder == null) {
                    builder = play(animator);
                } else {
                    builder.with(animator);
                }
            }
        }
    }

    public final void playTogether(Animator... animatorArr) {
        int i = 1;
        if (animatorArr != null) {
            this.mNeedsSort = true;
            Builder play = play(animatorArr[0]);
            while (i < animatorArr.length) {
                play.with(animatorArr[i]);
                i++;
            }
        }
    }

    public final AnimatorSet setDuration(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("duration must be a value of zero or greater");
        }
        Iterator it = this.mNodes.iterator();
        while (it.hasNext()) {
            ((Node) it.next()).animation.setDuration(j);
        }
        this.mDuration = j;
        return this;
    }

    public final void setInterpolator(Interpolator interpolator) {
        Iterator it = this.mNodes.iterator();
        while (it.hasNext()) {
            ((Node) it.next()).animation.setInterpolator(interpolator);
        }
    }

    public final void setStartDelay(long j) {
        this.mStartDelay = j;
    }

    public final void setTarget(Object obj) {
        Iterator it = this.mNodes.iterator();
        while (it.hasNext()) {
            Animator animator = ((Node) it.next()).animation;
            if (animator instanceof AnimatorSet) {
                ((AnimatorSet) animator).setTarget(obj);
            } else if (animator instanceof ObjectAnimator) {
                ((ObjectAnimator) animator).setTarget(obj);
            }
        }
    }

    public final void setupEndValues() {
        Iterator it = this.mNodes.iterator();
        while (it.hasNext()) {
            ((Node) it.next()).animation.setupEndValues();
        }
    }

    public final void setupStartValues() {
        Iterator it = this.mNodes.iterator();
        while (it.hasNext()) {
            ((Node) it.next()).animation.setupStartValues();
        }
    }

    public final void start() {
        ArrayList arrayList;
        int i = 0;
        this.mTerminated = false;
        this.mStarted = true;
        sortNodes();
        int size = this.mSortedNodes.size();
        int i2 = 0;
        while (i2 < size) {
            Node node = (Node) this.mSortedNodes.get(i2);
            Collection listeners = node.animation.getListeners();
            if (listeners != null && listeners.size() > 0) {
                Iterator it = new ArrayList(listeners).iterator();
                while (it.hasNext()) {
                    AnimatorListener animatorListener = (AnimatorListener) it.next();
                    if (animatorListener instanceof DependencyListener || animatorListener instanceof AnimatorSetListener) {
                        node.animation.removeListener(animatorListener);
                    }
                }
            }
            i2++;
        }
        ArrayList arrayList2 = new ArrayList();
        int i3 = 0;
        while (i3 < size) {
            node = (Node) this.mSortedNodes.get(i3);
            if (this.mSetListener == null) {
                this.mSetListener = new AnimatorSetListener(this);
            }
            if (node.dependencies == null || node.dependencies.size() == 0) {
                arrayList2.add(node);
            } else {
                int size2 = node.dependencies.size();
                i2 = 0;
                while (i2 < size2) {
                    Dependency dependency = (Dependency) node.dependencies.get(i2);
                    dependency.node.animation.addListener(new DependencyListener(this, node, dependency.rule));
                    i2++;
                }
                node.tmpDependencies = (ArrayList) node.dependencies.clone();
            }
            node.animation.addListener(this.mSetListener);
            i3++;
        }
        if (this.mStartDelay <= 0) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                node = (Node) it2.next();
                node.animation.start();
                this.mPlayingSet.add(node.animation);
            }
        } else {
            this.mDelayAnim = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
            this.mDelayAnim.setDuration(this.mStartDelay);
            this.mDelayAnim.addListener(new AnonymousClass_1(arrayList2));
            this.mDelayAnim.start();
        }
        if (this.mListeners != null) {
            arrayList = (ArrayList) this.mListeners.clone();
            i3 = arrayList.size();
            i2 = 0;
            while (i2 < i3) {
                ((AnimatorListener) arrayList.get(i2)).onAnimationStart(this);
                i2++;
            }
        }
        if (this.mNodes.size() == 0 && this.mStartDelay == 0) {
            this.mStarted = false;
            if (this.mListeners != null) {
                arrayList = (ArrayList) this.mListeners.clone();
                i2 = arrayList.size();
                while (i < i2) {
                    ((AnimatorListener) arrayList.get(i)).onAnimationEnd(this);
                    i++;
                }
            }
        }
    }
}