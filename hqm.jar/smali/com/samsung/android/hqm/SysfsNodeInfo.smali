.class public Lcom/samsung/android/hqm/SysfsNodeInfo;
.super Ljava/lang/Object;
.source "SysfsNodeInfo.java"


# instance fields
.field private clear:I

.field private name:Ljava/lang/String;

.field private node:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hqm/SysfsNodeInfo;->clear:I

    iput-object p1, p0, Lcom/samsung/android/hqm/SysfsNodeInfo;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/hqm/SysfsNodeInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hqm/SysfsNodeInfo;->node:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/hqm/SysfsNodeInfo;->clear:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/SysfsNodeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/SysfsNodeInfo;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/SysfsNodeInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isClear()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hqm/SysfsNodeInfo;->clear:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
