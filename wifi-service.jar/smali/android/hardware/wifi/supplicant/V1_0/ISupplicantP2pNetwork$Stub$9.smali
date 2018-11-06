.class Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;
.super Ljava/lang/Object;
.source "ISupplicantP2pNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getClientListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->this$1:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v7, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v7}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    new-instance v2, Landroid/os/HwBlob;

    const/16 v7, 0x10

    invoke-direct {v2, v7}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-wide/16 v8, 0x8

    invoke-virtual {v2, v8, v9, v5}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v8, 0xc

    invoke-virtual {v2, v8, v9, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v6, Landroid/os/HwBlob;

    mul-int/lit8 v7, v5, 0x6

    invoke-direct {v6, v7}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    mul-int/lit8 v7, v3, 0x6

    int-to-long v0, v7

    const/4 v4, 0x0

    :goto_1
    const/4 v7, 0x6

    if-ge v4, v7, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    aget-byte v7, v7, v4

    invoke-virtual {v6, v0, v1, v7}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    invoke-virtual {v2, v8, v9, v6}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    return-void
.end method
