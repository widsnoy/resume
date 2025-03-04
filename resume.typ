#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标, 来源: https://fontawesome.com/icons/
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")
#let fa-blog = icon("icons/fa-blog.svg")

// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中, 请删除下面关于头像的三行参数, 并取消headerCenter的注释
  //headerCenter : true,

  // 如果不需要头像, 则将下面三行的参数注释或删除
  // photograph: "profile.jpg",
  // photograph-width: 10em,
  // gutter-width: 2em,
)[
  = 范宇航

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) 188-8196-7086",
    ),
    (
      icon: fa-envelope,
      content: "ricofx47@outlook.com",
      link: "mailto:ricofx47@outlook.com"
    ),
    (
      icon: fa-github,
      content: "github.com/widsnoy",
      link: "https://github.com/widsnoy",
    ),
    (
      icon: fa-blog,
      content: "my blog",
      link: "https://widsnoy.top",
    ),
  )
][
  #h(2em)

  作为 ACMer, 除了具有好的算法思维, 我的代码实现能力也很出色, 比赛时的大模拟题, 较复杂的数据结构题, 由我写基本能一次通过, 需要 debug 时也能很快找出问题。除了比赛外, 也爱好折腾电子产品, 同时学习了很多 Linux、Android 的知识。
]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2026.06

  2022.09
][
  *杭州电子科技大学* 计算机科学与技术 本科
  
  主修课程: 操作系统，计算机组成原理，计算机网络，编译原理

  英语: CET6
  //GPA: 5 / 5 · Rank: 0%
]


== #fa-wrench 专业技能

- 深刻理解应用常用的数据结构与算法, 常用图论、数论算法

- 熟悉 C++ 基础, C++11 的新特性。熟悉常用的 *STL*, *模板*, *智能指针等*。

- 熟悉 C++ *并发*编程, 包括互斥锁, 条件变量, 使用 RAII 管理资源。

- 熟悉关系型数据库, 理解 *事务*, *索引*, *锁管理*, *MVCC* 等

- 具有一定的硬件知识, 深刻理解 *五级流水线 CPU* 工作原理。

- 多年 Linux 使用经验, 熟悉常用的命令和开发工具


== #fa-award 获奖情况

#award(
  [ *第 49 届 ICPC 国际大学生程序设计竞赛亚洲区域赛杭州站* ],

  [ *银奖* ],
  date[ 2024 年 11 月 10 日]
)

#award(
  [ *第 49 届 ICPC 国际大学生程序设计竞赛亚洲区域赛南京站* ],

  [ *银奖* ],
  date[ 2024 年 11 月 03 日]
)

#award(
  [ *CCPC 中国大学生程序设计竞赛全国邀请赛（山东）* ],

  [ *金奖* ],
  date[ 2024 年 05 月 26 日]
)

// #award(
//   [* 第 33 次 CCF 计算机软件能力认证 *],

//   [* 满分 *],
//   date[ 2024 年 03 月 31 日]
//)


== #fa-code 项目经历

#item(
  link(
    "https://github.com/widsnoy/bustub-private",
    [ *CMU 15-445 — Fall 2024* ]
  ),
  [ *个人项目* ],
  date[ 2025 年 02 月 – 2025 年 03 月 ]
)

#tech[ C++, Database Systems ]

一个用现代 C++ 编写的关系型数据库, 学习并完成了 CMU-15445 的 Lecture 和 Projects

- Buffer Pool Manager: 设计基于 *LRU-k* 的高效页面置换策略, 避免 LRU 的缓存污染, 缓存缺失率降低约 5%～10%, 设计 PageWriteGuard/ PageReadGuard 使用 *RAII* 的思想保护页面读写，降低页面损坏风险。

- Database Index: 使用 *B+Tree* 提供索引支持。使用了 *螃蟹锁* 降低了锁竞争, 吞吐量提升 2 倍以上。 *乐观/悲观锁* 策略优化并发性能，在 B+Tree 结构稳定时尽量不使用排他锁，系统吞吐量可能提升 30%～50%。

- Query Execution: sql 语句执行采用*按需拉取数据*的查询执行模型, 实现了 SeqScan/IndexScan, Insert, Update, Delete, Join, *ExternalMergeSort* 等算子, 以及 NestedLoopJoin to HashJoin,  SeqScan to IndexScan 查询计划优化器

- Concurrency Control: 使用 *MVCC* 进行版本控制, 读写操作不会互相阻塞, 读密集型场景下相比 2PL 延迟可降低 30%-50%, 提供快照级别隔离。 

#item(
  link(
    "https://github.com/widsnoy/widsnoy-la32r",
    [ *CPU 设计实战* ]
  ),
  [ *个人项目* ],
  date[ 2024 年 04 月 – 2024 年 06 月 ]
)

#tech[ Chisel, loongarch32r ]

一个使用 Chisel 编写的五级流水线 CPU

- 支持 *loongarch32* 精简指令集, 采用 *AXI* 总线接口与系统中的内存、外设进行交互。

- 支持取指地址错、地址非对齐等异常处理。2 个软件中断、8 个硬件中断和定时器中断支持。
- 使用 verilator 将 verilog 转换为  C++ 代码后使用 * soc-simulator* 进行对拍测试。相比 Vivado 仿真速度提升 2 倍以上, 并且能精确定位到行为不一致的第一拍。