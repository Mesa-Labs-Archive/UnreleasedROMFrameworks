.class Lcom/android/internal/telephony/Am$2;
.super Ljava/lang/Object;
.source "Am.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/Am;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Am;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "-D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {v0}, Lcom/android/internal/telephony/Am;->-get0(Lcom/android/internal/telephony/Am;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Am;->-set6(Lcom/android/internal/telephony/Am;I)I

    :goto_0
    return v3

    :cond_0
    const-string/jumbo v0, "-N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {v0}, Lcom/android/internal/telephony/Am;->-get0(Lcom/android/internal/telephony/Am;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Am;->-set6(Lcom/android/internal/telephony/Am;I)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "-W"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/Am;->-set9(Lcom/android/internal/telephony/Am;Z)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "-P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    iget-object v1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Am;->-set1(Lcom/android/internal/telephony/Am;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/Am;->-set0(Lcom/android/internal/telephony/Am;Z)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "--start-profiler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    iget-object v1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Am;->-set1(Lcom/android/internal/telephony/Am;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/Am;->-set0(Lcom/android/internal/telephony/Am;Z)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "--sampling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    iget-object v1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Am;->-set4(Lcom/android/internal/telephony/Am;I)I

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "-R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    iget-object v1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Am;->-set3(Lcom/android/internal/telephony/Am;I)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "-S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/Am;->-set7(Lcom/android/internal/telephony/Am;Z)Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "--track-allocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {v0}, Lcom/android/internal/telephony/Am;->-get0(Lcom/android/internal/telephony/Am;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Am;->-set6(Lcom/android/internal/telephony/Am;I)I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "--user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    iget-object v1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    iget-object v2, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Am;->-set8(Lcom/android/internal/telephony/Am;I)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "--receiver-permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    iget-object v1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Am;->-set2(Lcom/android/internal/telephony/Am;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "--stack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    iget-object v1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Am;->-set5(Lcom/android/internal/telephony/Am;I)I

    goto/16 :goto_0

    :cond_b
    return v2
.end method
