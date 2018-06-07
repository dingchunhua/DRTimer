# DRTimer

## DRTimer是什么
DRTimer是一个方便快速打印方法执行耗时工具，可打印任意代码块或函数执行耗时。
## 安装
pod "DRTimer"
## 如何使用
```objectivec
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [DRTimer start:@"方法1"];
    // Do something
    [DRTimer stop:@"方法1"];
}
```
控制台打印

```
 [DRTimer][方法1] 0.033975ms
```