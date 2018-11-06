.class Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$9;
.super Ljava/lang/Object;
.source "ISecSupplicantP2pIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$9;->this$1:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
