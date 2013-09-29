#include <gtest/gtest.h>
#include <cg/new_task/new_task.h>

TEST(new_task_class, simple_case)
{
    EXPECT_TRUE( 1 + 2 == cg::new_task_foo(1, 2));
}
