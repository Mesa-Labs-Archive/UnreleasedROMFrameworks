.class Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$6;
.super Ljava/lang/Object;
.source "ISecSupplicantStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$6;->this$1:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 7

    const/4 v6, 0x6

    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v4}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v6}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    aget-byte v4, p2, v3

    invoke-virtual {v2, v0, v1, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v4, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v4}, Landroid/os/HwParcel;->send()V

    return-void
.end method
