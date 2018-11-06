.class public Lcom/android/internal/telephony/OemHookIndication;
.super Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;
.source "OemHookIndication.java"


# instance fields
.field mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public oemHookRaw(ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x404

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method
