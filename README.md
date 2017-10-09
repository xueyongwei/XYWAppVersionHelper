# XYWAppVersionHelper
处理一些版本升级兼容问题时用到。你可以更改targets中的Version来测试。理论来讲只需要用到appThislaunchType方法，根据返回值来做相应的操作。
⚠️注意，仅支持最多3段数字类型的版本号,且第二段不大于100（eg，1、3.0、5.1.5、10.88.666）
### 使用场景
1. 应用版本兼容问题
2. 启动广告显示
3. 版本升级

### 使用方法
1. 直接下载拖入文件夹到工程
2. cocapods 添加  <code>pod 'XYWAppVersionHelper'</code>
### 示例代码
<pre><code>
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    XYWVersonHelperLunchType type = [XYWAppVersionHelper shareHelper].lunchType;
    switch (type) {
        case XYWVersonHelperLunchTypeNormal:
            NSLog(@"正常启动");
            break;
        case XYWVersonHelperLunchTypeFirstLuchThisVersion:
            NSLog(@"新版本启动");
            break;
        case XYWVersonHelperLunchTypeFirstLuchAfterInstall:
            NSLog(@"安装后第一次启动");
            break;
        default:
            break;
    }
    NSLog(@"%f",[XYWAppVersionHelper shareHelper].currentVersion);
    return YES;
}
</code></pre>
