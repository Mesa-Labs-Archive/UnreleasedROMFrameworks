.class Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
.super Ljava/lang/Object;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cfu"
.end annotation


# instance fields
.field final mOnComplete:Landroid/os/Message;

.field final mSetCfNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    return-void
.end method
