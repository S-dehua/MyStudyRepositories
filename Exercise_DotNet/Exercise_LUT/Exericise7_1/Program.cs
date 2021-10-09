using System;
using System.Collections.Generic;

namespace Exericise7_1
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] str2 = { "abc","def","ghi","jkl","mno","pqr","stu","vwx","yz"};
            Queue<string> queue1 = new Queue<string>(str2);
            int[] i2 = { 1 ,2 ,3 ,4, 5, 6, 7, 8, 9 };
            Queue<int> queue2 = new Queue<int>(i2);

            foreach(string s in queue1)
            {
                Console.Write(s + "\t");
            }
            Console.WriteLine();
            foreach(int n in queue2)
            {
                Console.Write(n + "\t");
            }
        }
    }

   public class MyQueue<T>
    {
        private int mCapicity;
        private int mStartIndex;
        private int mEndIndex;
        private int mCount;
        private T[] mArray;

        public MyQueue(int capicity)
        {
            mCapicity = capicity;
            mArray = new T[capicity];
        }

        public int Count
        {
            get
            {
                return mCount;
            }
        }

        public bool IsFull
        {
            get
            {
                return mCount == mCapicity;
            }
        }

        public int Capicity
        {
            get { return mCapicity; }
        }

        public bool IsEmpty
        {
            get
            {
                return mCount == 0;
            }
        }

        public void Clear()
        {
            mStartIndex = 0;
            mEndIndex = 0;
            mCount = 0;
            mCapicity = 0;
            mArray = null;
        }

        public void Enqueue(T e)
        {
            if (IsFull)
            {
                throw new Exception("queue is full");
            }

            mArray[mEndIndex] = e;
            mCount++;

            mEndIndex++;
            if (mEndIndex == mCapicity)
            {
                mEndIndex = 0;
            }
        }

        public T Dequeue()
        {
            if (IsEmpty)
            {
                throw new Exception("queue is empty");
            }

            var r = mArray[mStartIndex];

            mStartIndex++;
            if (mStartIndex == mCapicity)
            {
                mStartIndex = 0;
            }
            mCount--;
            return r;
        }
    }


}
