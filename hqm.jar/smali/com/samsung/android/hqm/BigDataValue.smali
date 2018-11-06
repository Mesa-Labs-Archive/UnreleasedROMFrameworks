.class public Lcom/samsung/android/hqm/BigDataValue;
.super Ljava/lang/Object;
.source "BigDataValue.java"


# instance fields
.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataValue;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataValue;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/hqm/BigDataValue;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/hqm/BigDataValue;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataValue;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataValue;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataValue;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
