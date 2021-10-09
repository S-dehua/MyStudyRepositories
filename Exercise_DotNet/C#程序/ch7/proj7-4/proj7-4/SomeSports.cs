using System;
public class Basketball : Sport
{
    public Basketball()			//篮球类
    { name = "篮球"; }
    public override string GetDuration()
    { return "共4节，每节15分钟"; }
    public override string GetName()
    { return name; }
}
public class Hockey : Sport			//曲棍球类
{
    public Hockey()
    { name = "曲棍球"; }
    public override string GetDuration()
    { return "两个半场，各35分钟"; }
    public override string GetName()
    { return name; }
}
public class Football : Sport		//足球类
{
    public Football()
    { name = "足球"; }
    public override string GetDuration()
    { return "两个半场，各45分钟"; }
    public override string GetName()
    { return name; }
}
