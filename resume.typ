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

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消headerCenter的注释
  //headerCenter : true,

  // 如果不需要头像，则将下面三行的参数注释或删除
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

  作为 ACMer，除了具有好的算法思维，我的代码实现能力也很出色，比赛时的大模拟题，较复杂的数据结构题，由我写基本能一次通过，需要 debug 时也能很快找出问题。除了比赛外，也爱好折腾电子产品，同时学习了很多 Linux、Android 的知识。
]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2022.06

  2026.09
][
  *杭州电子科技大学* · 卓越学院
  \
  计算机科学与技术 本科
  \

  英语: CET6
  //GPA: 5 / 5 · Rank: 0%
]


== #fa-wrench 专业技能

#sidebar(with-line: false, side-width: 12%)[
  *操作系统*
  \

  *编程技术*

][
  #fa-linux Linux, #h(0.5em) #fa-windows Windows
  
  C, C++, 数据结构, 常见图论、数论算法
  
  print/gdb等代码调试方法, linux 常用命令, 简单 bash 脚本编写

]


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
  [ *中国大学生程序设计竞赛全国邀请赛（山东）* ],

  [ *金奖* ],
  date[ 2024 年 05 月 26 日]
)

#award(
  [ *第 9 届 CCPC 中国大学生程序设计竞赛深圳站* ],

  [ *铜奖* ],
  date[ 2023 年 11 月 12 日]
)

#award(
  [* 第 33 次 CCF 计算机软件能力认证 *],

  [* 满分 *],
  date[ 2024 年 03 月 31 日]
)


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

一个用现代 C++ 编写的关系型数据库，学习并完成了 CMU-15445 的 Lecture 和 Projects

- Buffer Pool Manager: 使用 *LRU-k* 算法进行页面置换，设计 PageWriteGuard/ PageReadGuard 使用 *RAII* 的思想保护页面读写

- Database Index: 使用 *B+Tree* 提供索引支持，不仅能实现 k-v 存储，还能在建立索引的情况下实现排序功能。使用了 *螃蟹锁*  *乐观/悲观锁* 策略优化并发性能。

- Query Execution：sql 语句执行采用 *火山模型*, 实现了 SeqScan/IndexScan, Insert, Update, Delete, Join, *ExternalMergeSort* 等算子，以及 NestedLoopJoin to HashJoin， SeqScan to IndexScan 查询计划优化器

- Concurrency Control：使用 *MVCC* 进行版本控制，读写操作不会互相阻塞，高并发情况下相比于 2PL 具有更好的性能，提供快照级别隔离。

#item(
  link(
    "https://github.com/widsnoy/widsnoy-la32r",
    [ *CPU 设计实战* ]
  ),
  [ *个人项目* ],
  date[ 2024 年 04 月 – 2024 年 06 月 ]
)

#tech[ Chisel，loongarch32r ]

一个使用 Chisel 编写的五级流水线 CPU

- 支持 *loongarch32* 精简指令集，采用 *AXI* 总线接口与系统中的内存、外设进行交互

- 支持取指地址错、地址非对齐等异常处理。2 个软件中断、8 个硬件中断和定时器中断支持。
- 使用 verilator 将 verilog 转换为  C++ 代码后使用 * soc-simulator* 进行对拍测试。相比 Vivado 上仿真的优点是速度更快，并且能精确定位到行为不一致的第一拍。