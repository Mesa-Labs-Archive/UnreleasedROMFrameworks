.class Lcom/android/internal/telephony/PhoneSwitcher$2;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
