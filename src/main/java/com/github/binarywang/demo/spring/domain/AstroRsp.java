package com.github.binarywang.demo.spring.domain;

public class AstroRsp {

    /**
     * status : 0
     * msg : ok
     * result : {"astroid":"7","astroname":"天秤座","year":{"date":"2018","summary":"2018年一开始，天秤就已经很忙碌了，无论是事业还是生活上，大大小小各个领域的事情都挺多的。工作事务不断增加，还有家庭事，需要你投入比以前更多的心思时间去经营管理。一些合作事务需要明确责任，关于利益层面的必须要谈判清楚，以免出现损失。与他人尽量保持良好的关系，可是与有伴者要保持距离，不要跨界了。另一半面，今年身体状况尚算不错，各方面机能正常，但女性要注意会有内分泌失调，饮食习惯需要做出改变。","money":"财运上，会有得财机会，要是遇到好的投资项目，必须要仔细考虑做好计划才好行动，太着急会导致损失。贵人较少，没有太多的好运气，收入方面可能会大打折扣。","career":"事业发展变化并不算很大，整体进行得尚算顺利，对待工作依然认真对待。但是对他人有不信任，团队合作中不够强势，另外要克服职场强大的压力。","love":"感情上的处理有点欠缺技巧，恋人亲密度不够，可能会有不愉快的事情发生，彼此的包容心不够大，需要多沟通；单身者年初的感情不太顺利，到了3月开始，桃花会出现，也许会有新恋情。"},"week":{"date":"2018-03-25~03-31","money":"最近对金钱会有一些新规划，花钱不会那么任性随意，部分人会有储蓄的意识。","career":"工作运势不太好，状态欠佳，易将小事化大。职场需要多跟人交流，尽可能将问题改善。","love":"本周有伴者可能会某个异性吸引，与他人有暧昧的联系；单身者桃花蛮多的，但选择比较困难，要小心成为第三者。","health":"身体方面，要是觉得有不舒服要多休息或是及时就医，病痛不宜拖拉。","job":""},"today":{"date":"2018-03-26","presummary":"今天你感情运势不佳，防止对你示好的异性别有用心，不要轻易答应对方的要求，没有目的的交流，以不变应万变最好。","star":"天秤座","color":"黄色","number":"7","summary":"1","money":"2","career":"1","love":"1","health":"4"},"tomorrow":{"date":"2018-03-27","presummary":"今天的你在工作中感受莫名其妙的压力，觉得自己宰很多方面还不够纯熟，不能马上上手，不要着急，万事都在积累之中。部分天秤会得到家人的帮助，会感觉到子女比较粘人。","star":"处女座","color":"绿色","number":"4","summary":"2","money":"1","career":"2","love":"2","health":"4"},"month":{"date":"2018-3","summary":"本月天秤座生活上节奏会变得缓慢，比较热衷在网上寻找存在感。","money":"花钱比较多，进账比较慢，所以财运基本是跟你无缘了。","career":"本月天秤工作上很多事情都需要用网络沟通和平衡，虽然自己很想要实际去干点事，但是比较有束缚感。","love":"有伴的天秤座和另一半发展比较稳定，而单身的天秤座身边可能出现暧昧，如果加一把劲，那还是有成功的可能性的。","health":"注意保护好头部。"}}
     */

    private String status;
    private String msg;
    private ResultBean result;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public ResultBean getResult() {
        return result;
    }

    public void setResult(ResultBean result) {
        this.result = result;
    }

    public static class ResultBean {
        /**
         * astroid : 7
         * astroname : 天秤座
         * year : {"date":"2018","summary":"2018年一开始，天秤就已经很忙碌了，无论是事业还是生活上，大大小小各个领域的事情都挺多的。工作事务不断增加，还有家庭事，需要你投入比以前更多的心思时间去经营管理。一些合作事务需要明确责任，关于利益层面的必须要谈判清楚，以免出现损失。与他人尽量保持良好的关系，可是与有伴者要保持距离，不要跨界了。另一半面，今年身体状况尚算不错，各方面机能正常，但女性要注意会有内分泌失调，饮食习惯需要做出改变。","money":"财运上，会有得财机会，要是遇到好的投资项目，必须要仔细考虑做好计划才好行动，太着急会导致损失。贵人较少，没有太多的好运气，收入方面可能会大打折扣。","career":"事业发展变化并不算很大，整体进行得尚算顺利，对待工作依然认真对待。但是对他人有不信任，团队合作中不够强势，另外要克服职场强大的压力。","love":"感情上的处理有点欠缺技巧，恋人亲密度不够，可能会有不愉快的事情发生，彼此的包容心不够大，需要多沟通；单身者年初的感情不太顺利，到了3月开始，桃花会出现，也许会有新恋情。"}
         * week : {"date":"2018-03-25~03-31","money":"最近对金钱会有一些新规划，花钱不会那么任性随意，部分人会有储蓄的意识。","career":"工作运势不太好，状态欠佳，易将小事化大。职场需要多跟人交流，尽可能将问题改善。","love":"本周有伴者可能会某个异性吸引，与他人有暧昧的联系；单身者桃花蛮多的，但选择比较困难，要小心成为第三者。","health":"身体方面，要是觉得有不舒服要多休息或是及时就医，病痛不宜拖拉。","job":""}
         * today : {"date":"2018-03-26","presummary":"今天你感情运势不佳，防止对你示好的异性别有用心，不要轻易答应对方的要求，没有目的的交流，以不变应万变最好。","star":"天秤座","color":"黄色","number":"7","summary":"1","money":"2","career":"1","love":"1","health":"4"}
         * tomorrow : {"date":"2018-03-27","presummary":"今天的你在工作中感受莫名其妙的压力，觉得自己宰很多方面还不够纯熟，不能马上上手，不要着急，万事都在积累之中。部分天秤会得到家人的帮助，会感觉到子女比较粘人。","star":"处女座","color":"绿色","number":"4","summary":"2","money":"1","career":"2","love":"2","health":"4"}
         * month : {"date":"2018-3","summary":"本月天秤座生活上节奏会变得缓慢，比较热衷在网上寻找存在感。","money":"花钱比较多，进账比较慢，所以财运基本是跟你无缘了。","career":"本月天秤工作上很多事情都需要用网络沟通和平衡，虽然自己很想要实际去干点事，但是比较有束缚感。","love":"有伴的天秤座和另一半发展比较稳定，而单身的天秤座身边可能出现暧昧，如果加一把劲，那还是有成功的可能性的。","health":"注意保护好头部。"}
         */

        private String astroid;
        private String astroname;
        private YearBean year;
        private WeekBean week;
        private TodayBean today;
        private TomorrowBean tomorrow;
        private MonthBean month;

        public String getAstroid() {
            return astroid;
        }

        public void setAstroid(String astroid) {
            this.astroid = astroid;
        }

        public String getAstroname() {
            return astroname;
        }

        public void setAstroname(String astroname) {
            this.astroname = astroname;
        }

        public YearBean getYear() {
            return year;
        }

        public void setYear(YearBean year) {
            this.year = year;
        }

        public WeekBean getWeek() {
            return week;
        }

        public void setWeek(WeekBean week) {
            this.week = week;
        }

        public TodayBean getToday() {
            return today;
        }

        public void setToday(TodayBean today) {
            this.today = today;
        }

        public TomorrowBean getTomorrow() {
            return tomorrow;
        }

        public void setTomorrow(TomorrowBean tomorrow) {
            this.tomorrow = tomorrow;
        }

        public MonthBean getMonth() {
            return month;
        }

        public void setMonth(MonthBean month) {
            this.month = month;
        }

        public static class YearBean {
            /**
             * date : 2018
             * summary : 2018年一开始，天秤就已经很忙碌了，无论是事业还是生活上，大大小小各个领域的事情都挺多的。工作事务不断增加，还有家庭事，需要你投入比以前更多的心思时间去经营管理。一些合作事务需要明确责任，关于利益层面的必须要谈判清楚，以免出现损失。与他人尽量保持良好的关系，可是与有伴者要保持距离，不要跨界了。另一半面，今年身体状况尚算不错，各方面机能正常，但女性要注意会有内分泌失调，饮食习惯需要做出改变。
             * money : 财运上，会有得财机会，要是遇到好的投资项目，必须要仔细考虑做好计划才好行动，太着急会导致损失。贵人较少，没有太多的好运气，收入方面可能会大打折扣。
             * career : 事业发展变化并不算很大，整体进行得尚算顺利，对待工作依然认真对待。但是对他人有不信任，团队合作中不够强势，另外要克服职场强大的压力。
             * love : 感情上的处理有点欠缺技巧，恋人亲密度不够，可能会有不愉快的事情发生，彼此的包容心不够大，需要多沟通；单身者年初的感情不太顺利，到了3月开始，桃花会出现，也许会有新恋情。
             */

            private String date;
            private String summary;
            private String money;
            private String career;
            private String love;

            public String getDate() {
                return date;
            }

            public void setDate(String date) {
                this.date = date;
            }

            public String getSummary() {
                return summary;
            }

            public void setSummary(String summary) {
                this.summary = summary;
            }

            public String getMoney() {
                return money;
            }

            public void setMoney(String money) {
                this.money = money;
            }

            public String getCareer() {
                return career;
            }

            public void setCareer(String career) {
                this.career = career;
            }

            public String getLove() {
                return love;
            }

            public void setLove(String love) {
                this.love = love;
            }
        }

        public static class WeekBean {
            /**
             * date : 2018-03-25~03-31
             * money : 最近对金钱会有一些新规划，花钱不会那么任性随意，部分人会有储蓄的意识。
             * career : 工作运势不太好，状态欠佳，易将小事化大。职场需要多跟人交流，尽可能将问题改善。
             * love : 本周有伴者可能会某个异性吸引，与他人有暧昧的联系；单身者桃花蛮多的，但选择比较困难，要小心成为第三者。
             * health : 身体方面，要是觉得有不舒服要多休息或是及时就医，病痛不宜拖拉。
             * job :
             */

            private String date;
            private String money;
            private String career;
            private String love;
            private String health;
            private String job;

            public String getDate() {
                return date;
            }

            public void setDate(String date) {
                this.date = date;
            }

            public String getMoney() {
                return money;
            }

            public void setMoney(String money) {
                this.money = money;
            }

            public String getCareer() {
                return career;
            }

            public void setCareer(String career) {
                this.career = career;
            }

            public String getLove() {
                return love;
            }

            public void setLove(String love) {
                this.love = love;
            }

            public String getHealth() {
                return health;
            }

            public void setHealth(String health) {
                this.health = health;
            }

            public String getJob() {
                return job;
            }

            public void setJob(String job) {
                this.job = job;
            }
        }

        public static class TodayBean {
            /**
             * date : 2018-03-26
             * presummary : 今天你感情运势不佳，防止对你示好的异性别有用心，不要轻易答应对方的要求，没有目的的交流，以不变应万变最好。
             * star : 天秤座
             * color : 黄色
             * number : 7
             * summary : 1
             * money : 2
             * career : 1
             * love : 1
             * health : 4
             */

            private String date;
            private String presummary;
            private String star;
            private String color;
            private String number;
            private String summary;
            private String money;
            private String career;
            private String love;
            private String health;

            public String getDate() {
                return date;
            }

            public void setDate(String date) {
                this.date = date;
            }

            public String getPresummary() {
                return presummary;
            }

            public void setPresummary(String presummary) {
                this.presummary = presummary;
            }

            public String getStar() {
                return star;
            }

            public void setStar(String star) {
                this.star = star;
            }

            public String getColor() {
                return color;
            }

            public void setColor(String color) {
                this.color = color;
            }

            public String getNumber() {
                return number;
            }

            public void setNumber(String number) {
                this.number = number;
            }

            public String getSummary() {
                return summary;
            }

            public void setSummary(String summary) {
                this.summary = summary;
            }

            public String getMoney() {
                return money;
            }

            public void setMoney(String money) {
                this.money = money;
            }

            public String getCareer() {
                return career;
            }

            public void setCareer(String career) {
                this.career = career;
            }

            public String getLove() {
                return love;
            }

            public void setLove(String love) {
                this.love = love;
            }

            public String getHealth() {
                return health;
            }

            public void setHealth(String health) {
                this.health = health;
            }
        }

        public static class TomorrowBean {
            /**
             * date : 2018-03-27
             * presummary : 今天的你在工作中感受莫名其妙的压力，觉得自己宰很多方面还不够纯熟，不能马上上手，不要着急，万事都在积累之中。部分天秤会得到家人的帮助，会感觉到子女比较粘人。
             * star : 处女座
             * color : 绿色
             * number : 4
             * summary : 2
             * money : 1
             * career : 2
             * love : 2
             * health : 4
             */

            private String date;
            private String presummary;
            private String star;
            private String color;
            private String number;
            private String summary;
            private String money;
            private String career;
            private String love;
            private String health;

            public String getDate() {
                return date;
            }

            public void setDate(String date) {
                this.date = date;
            }

            public String getPresummary() {
                return presummary;
            }

            public void setPresummary(String presummary) {
                this.presummary = presummary;
            }

            public String getStar() {
                return star;
            }

            public void setStar(String star) {
                this.star = star;
            }

            public String getColor() {
                return color;
            }

            public void setColor(String color) {
                this.color = color;
            }

            public String getNumber() {
                return number;
            }

            public void setNumber(String number) {
                this.number = number;
            }

            public String getSummary() {
                return summary;
            }

            public void setSummary(String summary) {
                this.summary = summary;
            }

            public String getMoney() {
                return money;
            }

            public void setMoney(String money) {
                this.money = money;
            }

            public String getCareer() {
                return career;
            }

            public void setCareer(String career) {
                this.career = career;
            }

            public String getLove() {
                return love;
            }

            public void setLove(String love) {
                this.love = love;
            }

            public String getHealth() {
                return health;
            }

            public void setHealth(String health) {
                this.health = health;
            }
        }

        public static class MonthBean {
            /**
             * date : 2018-3
             * summary : 本月天秤座生活上节奏会变得缓慢，比较热衷在网上寻找存在感。
             * money : 花钱比较多，进账比较慢，所以财运基本是跟你无缘了。
             * career : 本月天秤工作上很多事情都需要用网络沟通和平衡，虽然自己很想要实际去干点事，但是比较有束缚感。
             * love : 有伴的天秤座和另一半发展比较稳定，而单身的天秤座身边可能出现暧昧，如果加一把劲，那还是有成功的可能性的。
             * health : 注意保护好头部。
             */

            private String date;
            private String summary;
            private String money;
            private String career;
            private String love;
            private String health;

            public String getDate() {
                return date;
            }

            public void setDate(String date) {
                this.date = date;
            }

            public String getSummary() {
                return summary;
            }

            public void setSummary(String summary) {
                this.summary = summary;
            }

            public String getMoney() {
                return money;
            }

            public void setMoney(String money) {
                this.money = money;
            }

            public String getCareer() {
                return career;
            }

            public void setCareer(String career) {
                this.career = career;
            }

            public String getLove() {
                return love;
            }

            public void setLove(String love) {
                this.love = love;
            }

            public String getHealth() {
                return health;
            }

            public void setHealth(String health) {
                this.health = health;
            }
        }
    }
}
