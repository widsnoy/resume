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
    )
  )
][
  #h(2em)

  计算机系统与算法爱好者，具备扎实的编程能力。熟悉 C++ 现代语言特性，曾在 ICPC 等算法竞赛中获奖。努力在技术深度不断突破。
]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2026.06

  2022.09
][
  *杭州电子科技大学* 计算机科学与技术 本科
  
  主修课程: 操作系统，计算机组成原理，计算机网络，数据结构

  技能: CET6、CCF-CSP 500 分
]


== #fa-wrench 专业技能

- 熟悉常用的数据结构与算法, 常用图论、数论算法

- 熟悉 C++ 基础, C++11 的新特性。熟悉常用的 *STL*, *模板*, *智能指针等*。

- 有一定的硬件知识, 理解 *五级流水线 CPU* 工作原理。


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

一个用现代 C++ 编写的关系型数据库

- Buffer Pool Manager: 设计基于 *LRU-k* 的高效页面置换策略, 避免 LRU 的缓存污染, 缓存缺失率降低约 5%～10%, 设计 PageWriteGuard/ PageReadGuard 使用 *RAII* 的思想保护页面读写，降低页面损坏风险。

- Database Index: 使用 *B+Tree* 提供索引支持。使用了 *螃蟹锁* 降低了锁竞争, 吞吐量提升 2 倍以上。 *乐观/悲观锁* 策略优化并发性能，在 B+Tree 结构稳定时尽量不使用排他锁，系统吞吐量可能提升 30%～50%。

- Query Execution: sql 语句执行采用*按需拉取数据*的查询执行模型, 实现了 SeqScan/IndexScan, Insert, Update, Delete, Join, *ExternalMergeSort* 等算子, 以及 NestedLoopJoin to HashJoin,  SeqScan to IndexScan 查询计划优化器

- Concurrency Control: 使用 *MVCC* 进行版本控制, 读写操作不会互相阻塞, 读密集型场景下相比 2PL 延迟可降低 30%-50%, 提供快照级别隔离。 

#item(
  link(
    "https://github.com/Amazing-Ave-Mujica/code_craft",
    [ *华为软件挑战赛—磁盘控制系统* ]
  ),
  [ *团队项目* ],
  date[ 2025 年 03 月 – 2025 年 04 月 ]
)

#tech[ C++, 算法设计 ]

设计并实现了一个模拟磁盘任务调度与数据分配系统，获得 2025 华为软件精英挑战赛二等奖
- *系统架构*：采用 C++ 编写，模块化设计，便于扩展与维护。
- *资源分配优化*：利用模拟退火算法优化磁盘资源分配，生成磁盘与 TAG 的分配矩阵，较平均分配策略提升 5%～10% 的性能。

- *段式存储管理*：设计段式存储结构，使相同 TAG 的对象尽量连续存储，并支持写入和删除对象。

- *磁盘调度优化*：实现 TopScheduler，根据磁头位置、负载与请求距离动态分配任务。再根据任务进行动态规划，优化磁头的移动方案。