#include <gtest/gtest.h>
#include <cg/visibility_graph/visibility_graph.cpp>

TEST(new_task_class, simple_case)
{
    EXPECT_TRUE( 1 + 2 == cg::new_task_foo(1, 2));
}
