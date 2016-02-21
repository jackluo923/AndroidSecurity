package com.vungle.publisher;

import com.millennialmedia.android.MMRequest;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class Demographic {
    private Integer a;
    private Gender b;

    public enum Gender {
        female,
        male;

        static {
            female = new com.vungle.publisher.Demographic.Gender(MMRequest.GENDER_FEMALE, 0);
            male = new com.vungle.publisher.Demographic.Gender(MMRequest.GENDER_MALE, 1);
            a = new com.vungle.publisher.Demographic.Gender[]{female, male};
        }
    }

    @Inject
    Demographic() {
    }

    public Integer getAge() {
        return this.a;
    }

    public Gender getGender() {
        return this.b;
    }

    public boolean isEmpty() {
        return this.a == null && this.b == null;
    }

    public void setAge(Integer num) {
        this.a = num;
    }

    public void setGender(Gender gender) {
        this.b = gender;
    }
}