.class Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$27;
.super Ljava/lang/Object;
.source "ISecSupplicantStaNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$27;->this$1:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$27;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$27;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$27;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$27;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$27;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
