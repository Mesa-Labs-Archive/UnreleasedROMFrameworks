.class public Lcom/samsung/android/hqm/setting/SubFeature;
.super Ljava/lang/Object;
.source "SubFeature.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static operatorUT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/hqm/setting/Feature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/setting/SubFeature;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/hqm/setting/SubFeature;->operatorUT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
