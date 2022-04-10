# api-testing-robotframework-ootb
RobotFramework based API testing tool. (out of the box)

## 概述
兴趣使然，想打包一个开箱即用的接口自动化测试工具。
曾经年少轻狂，用Java+JUnit+HttpClient+Jenkins/Python+Pytest+Requests+Jenkins都搭过一些接口自动化框架。用了很多技巧，但肯定不能和成熟社区的框架相比。同时后期维护成本较高，需要增加一些关键功能只能自己写。
想想还是打包一套开箱即用的工具，站在巨人肩上，把时间留给如何支撑好业务吧。

## 技术框架
Python+Robotframework

## 开箱指南
### 前期储备
- Python基础知识。
- Robot Framework 基础知识：https://robotframework.org/

### 开发环境配置
- 安装Python3及对应虚拟环境
- 安装robot包(这步在后面的项目初始化会走到。如果要安装RIDE，需要提前安装):  pip3 instrall robotframework==5.0
- IDE配置: 
    - VS Code 配置扩展插件：
        1. Python
        2. Robot Framework Intellisense
        3. Robot Framework Language Server

    - RIDE 安装: https://github.com/robotframework/RIDE/wiki/Installation-Instructions

### 项目初始化
- 拉取项目：git clone 项目
- 断开git绑定：
- 修改项目名称：
- 创建并上传到项目的代码仓库：
- 创建虚拟环境，并安装依赖：pipenv install 
- todo:

### 项目结构说明
- 标签
    - \[dir]: 目录
    - \[file]: 文件
    - \[content]: 代码内容

- common: \[dir],存放通用方法，一般是较为底层的通用工具，建议有框架的维护者来操作。
    - runner: \[dir], 存放运行脚本。
        - run.sh: \[file], 执行测试用例的脚本。默认执行所有。可以根据实际需要进行修改。
        - runner_arguments.txt: \[file], 执行测试外部参数文件。可以根据实际需要进行修改。
    - reports: \[dir], 存放运行脚本执行后的报告文件，report.html+output.xml+log.html

- user_utils: \[dir],各业务方用户自定义的工具方法、包括自定义keyword也可以放在这里管理。
    - todo

- project_template: \[dir],存放项目的测试用例、数据等。此为模板，使用者可以复制一个结构改为自己的项目名称。一个框架下可以有多个项目。
    - module: \[dir],以被测模块或者场景为维度组织测试集，包含测试用例、资源等。名字自定义，一般建议按照模块名称进行命名，比较通俗易懂。例如：account_management。一个项目下有多个module。
        - testSuite.robot: \[file],测试套件，module下一系列测试用例文件，一般以测试目标命名。例如register.robot。
            - testcase: \[content],测试用例文件，具体的测试用例。
        - resource.robot: \[file],模块级资源文件，本模块自定义的一些关键字，变量等在此编写。在testSuite中以resource形式导入。一个module下面建议一个.
            - keywords: \[content], 用户自定义关键字。
    - resources: \[dir], 项目级资源文件，跨模块抽象的关键字、变量等均可以放到这里。
        - user_keywords.robot: \[file], 项目级用户自定义关键字。
        - configs.robot: \[file], 项目级的配置文件.

- demo: demo目录，用于存放一些demo。复制于project目录。

- Pipfile & Pipfile.lock: pipenv虚拟环境的包依赖文档。


### 常用命令
- 启动测试：
    1. 进入common/runner/目录
    2. 授权 chmod u+x run.sh (仅第一次使用时需要操作)
    3. 执行shell命令，运行所有case ./run.sh  
- 