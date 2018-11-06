.class final synthetic Lcom/android/internal/telephony/imsphone/-$Lambda$tILLuSJl16qfDJK1ikBVGFm2D5w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/-$Lambda$tILLuSJl16qfDJK1ikBVGFm2D5w;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->lambda$-com_android_internal_telephony_imsphone_ImsPhoneCallTracker_33120()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/-$Lambda$tILLuSJl16qfDJK1ikBVGFm2D5w;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final notifyStatusChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/-$Lambda$tILLuSJl16qfDJK1ikBVGFm2D5w;->$m$0()V

    return-void
.end method
