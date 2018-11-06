.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked$1;
.super Ljava/util/TimerTask;
.source "PhoneRestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private counter:I

.field final synthetic this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked;Ljava/util/Timer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked;

    iput-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked$1;->counter:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-get1()Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "CheckSimLocked calling unlockAllSimCards method"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-get1()Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-wrap3(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked$1;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked$1;->counter:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-get2()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "PhoneRestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CheckSimLocked timer canceled, count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked$1;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsKeyguardAlreadyCalled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-get2()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    return-void
.end method
