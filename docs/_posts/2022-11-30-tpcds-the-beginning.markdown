---
layout: post
title:  "Malloy TPC-DS: the beginning"
date:   2022-11-30 14:24:32 -0500
categories: malloy introduction
---

This site will be my journal for documenting my attempt to re-write the [TPC-DS](https://www.tpc.org/tpcds/) queries using the [Malloy](https://github.com/malloydata/malloy) query language. TPC-DS is a benchmark consisting of a star-schema dataset and a suite of 99 SQL queries, meant to measure the performance of OLAP data warehouses. The queries are of varying complexity, and in total, do a pretty good job of covering the full functionality of most SQL dialects implemented by data warehouse vendors. Malloy is an experimental query language built by the former founding team of Looker. It combines the concept of Semantic Modeling with ad-hoc querying, preserves the hierarchical nature of dimensional queries, and refreshes SQL's tired syntax. I'm doing this exercise to:
- gain more fluency with the Malloy language
- provide a journal for other folks who are interested in following along
- provide feedback back to the Malloy team about the language

It is NOT a tutorial for the Malloy language. To get started with the basics of Malloy, please visit the [Malloy documentation](https://malloydata.github.io/malloy/documentation/language/basic.html).

I'm not committing to any kind of regular posting schedule, but with each post, I'll provide the SQL query, dissect it and describe the motivating business question, then show the Malloy implementation. Each post will also include a link to a Pull Request in the [Github repository](https://github.com/carlineng/malloy-tpcds), and a discussion of any interesting features of Malloy that the query showcases.

Both the SQL and Malloy queries will be executed with DuckDB as the backend database. If you want to follow along, I've posted preliminary setup instructions in the [README](https://github.com/carlineng/malloy-tpcds/blob/main/README.md) of this Github repository. If you have trouble with the setup, get in touch with me on the [Malloy Slack](https://malloy-community.slack.com) (username @carl) and I can try to help out.
