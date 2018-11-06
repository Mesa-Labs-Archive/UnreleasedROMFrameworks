.class public Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;
.super Ljava/lang/Object;
.source "LogAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemInfo"
.end annotation


# instance fields
.field dataset:Ljava/lang/String;

.field sub_dataset:Ljava/lang/String;

.field type:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;->type:I

    iput-object p2, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;->dataset:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;->sub_dataset:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
