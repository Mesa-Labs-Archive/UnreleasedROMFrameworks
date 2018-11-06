.class Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$1;
.super Ljava/lang/Object;
.source "ISemHostapdApIface.java"

# interfaces
.implements Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$getNameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$1;->this$1:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
