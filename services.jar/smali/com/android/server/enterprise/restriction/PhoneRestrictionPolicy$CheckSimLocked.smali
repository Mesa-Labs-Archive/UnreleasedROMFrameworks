.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked;
.super Landroid/app/job/JobService;
.source "PhoneRestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckSimLocked"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked$1;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$CheckSimLocked;Ljava/util/Timer;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    const/4 v6, 0x1

    return v6
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
