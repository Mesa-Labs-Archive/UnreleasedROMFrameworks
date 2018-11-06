.class public Lcom/samsung/android/hqm/HWParam/HWParamInfo;
.super Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;
.source "HWParamInfo.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/samsung/android/hqm/HWParam/HWParamInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->Id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->Feature:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->Ver:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->Manufacture:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->HitType:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HWParamInfo-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->FeatureList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    return-void
.end method
