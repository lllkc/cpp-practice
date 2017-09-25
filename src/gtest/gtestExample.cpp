#include <gtest/gtest.h>
#include <iostream>

namespace {
class FooTest : public ::testing::Test {
protected:
    FooTest()
    {
        std::cout << "in FooTest()" << std::endl;
    }

    virtual ~FooTest()
    {
        std::cout << "in ~FooTest()" << std::endl;
    }

    virtual void SetUp()
    {
        std::cout << "in SetUp()" << std::endl;
    }

    virtual void TearDown()
    {
        std::cout << "in TearDown()" << std::endl;
    }
};

TEST_F(FooTest, Doit)
{
    EXPECT_EQ(1, 1);
}

TEST(FooTest2, FUCK)
{
    EXPECT_GT(2, 1);
}
}

int main(int argc, char** argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
