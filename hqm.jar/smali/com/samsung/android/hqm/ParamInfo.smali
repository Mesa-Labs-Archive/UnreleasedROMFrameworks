.class public Lcom/samsung/android/hqm/ParamInfo;
.super Ljava/lang/Object;
.source "ParamInfo.java"


# instance fields
.field appId:Ljava/lang/String;

.field custom_dataset:Ljava/lang/String;

.field dev_custom_dataset:Ljava/lang/String;

.field feature:Ljava/lang/String;

.field hitType:Ljava/lang/String;

.field id:Ljava/lang/String;

.field interfaceType:I

.field manufacture:Ljava/lang/String;

.field pri_custom_dataset:Ljava/lang/String;

.field type:I

.field ver:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/hqm/ParamInfo;->interfaceType:I

    iput p2, p0, Lcom/samsung/android/hqm/ParamInfo;->type:I

    iput-object p3, p0, Lcom/samsung/android/hqm/ParamInfo;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hqm/ParamInfo;->ver:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/hqm/ParamInfo;->manufacture:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/hqm/ParamInfo;->hitType:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/hqm/ParamInfo;->feature:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/hqm/ParamInfo;->dev_custom_dataset:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/hqm/ParamInfo;->custom_dataset:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/hqm/ParamInfo;->pri_custom_dataset:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/hqm/ParamInfo;->appId:Ljava/lang/String;

    return-void
.end method
