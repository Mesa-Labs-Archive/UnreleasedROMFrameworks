.class Lcom/android/internal/telephony/CarrierActionAgent$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "CarrierActionAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierActionAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierActionAgent;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierActionAgent;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent$SettingsObserver;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent$SettingsObserver;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierActionAgent;->-get0(Lcom/android/internal/telephony/CarrierActionAgent;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent$SettingsObserver;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
