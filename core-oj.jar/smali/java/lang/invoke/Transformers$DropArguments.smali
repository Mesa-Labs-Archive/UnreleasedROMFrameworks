.class public Ljava/lang/invoke/Transformers$DropArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropArguments"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/invoke/MethodHandle;

.field private final range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final range2:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;II)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    iput-object p2, p0, Ljava/lang/invoke/Transformers$DropArguments;->delegate:Ljava/lang/invoke/MethodHandle;

    const/4 v1, 0x0

    invoke-static {p1, v1, p3}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v0, v1

    add-int v1, p3, p4

    if-ge v1, v0, :cond_0

    add-int v1, p3, p4

    invoke-static {p1, v1, v0}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$DropArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/invoke/Transformers$DropArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    goto :goto_0
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->delegate:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v0, v3, v4, v4}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v1, v3, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v2, v3, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v0, v3, v1, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    :cond_0
    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->delegate:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v3, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    return-void
.end method
