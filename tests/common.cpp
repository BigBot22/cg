#include <gtest/gtest.h>
#include <cg/common/common.h>


TEST(common, make_max)
{
   int a;

    EXPECT_TRUE(true == cg::make_max(a=3, 4));
    EXPECT_TRUE(true == cg::make_max(a=0, 4));
    EXPECT_TRUE(false == cg::make_max(a=5, 4));
    EXPECT_TRUE(true == cg::make_max(a=3, 4));
    EXPECT_TRUE(false == cg::make_max(a=4, 4));
}

TEST(common, make_min)
{
   int a;
   EXPECT_TRUE(true != cg::make_min(a=3, 4));
   EXPECT_TRUE(true != cg::make_min(a=0, 4));
   EXPECT_TRUE(false != cg::make_min(a=5, 4));
   EXPECT_TRUE(true != cg::make_min(a=3, 4));
   EXPECT_TRUE(false == cg::make_min(a=4, 4));
}
