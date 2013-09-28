#include <gtest/gtest.h>
#include <cg/operations/first_problem.h>

#include "random_utils.h"

TEST(first_problem, simple)
{
    EXPECT_TRUE(3 + 4 == sum_of_two_numbers(3, 4));
}
