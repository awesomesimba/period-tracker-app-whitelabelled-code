-- Adminer 4.7.5 PostgreSQL dump

DROP TABLE IF EXISTS "analytics";
DROP SEQUENCE IF EXISTS analytics_id_seq;
CREATE SEQUENCE analytics_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."analytics" (
    "id" integer DEFAULT nextval('analytics_id_seq') NOT NULL,
    "type" character varying NOT NULL,
    "payload" json NOT NULL,
    "metadata" json NOT NULL,
    "date_created" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT "PK_3c96dcbf1e4c57ea9e0c3144bff" PRIMARY KEY ("id")
) WITH (oids = false);


DROP VIEW IF EXISTS "answered_quizzes";
CREATE TABLE "answered_quizzes" ("id" text, "question" text, "iscorrect" text, "answerid" text, "answer" text, "date" text);


DROP VIEW IF EXISTS "answered_surveys";
CREATE TABLE "answered_surveys" ("id" text, "question" text, "answerid" text, "answer" text, "date" text);


DROP TABLE IF EXISTS "app_event";
DROP SEQUENCE IF EXISTS app_event_id_seq;
CREATE SEQUENCE app_event_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."app_event" (
    "id" integer DEFAULT nextval('app_event_id_seq') NOT NULL,
    "local_id" uuid NOT NULL,
    "type" character varying NOT NULL,
    "payload" json NOT NULL,
    "metadata" json NOT NULL,
    "user_id" character varying,
    "created_at" timestamp DEFAULT now() NOT NULL,
    CONSTRAINT "PK_29890fa3d1061426586f1219c24" PRIMARY KEY ("id"),
    CONSTRAINT "UQ_f73fa15b2baef2cd007f75e5f36" UNIQUE ("local_id")
) WITH (oids = false);


DROP TABLE IF EXISTS "article";
CREATE TABLE "public"."article" (
    "id" uuid NOT NULL,
    "category" character varying NOT NULL,
    "subcategory" character varying NOT NULL,
    "article_heading" character varying NOT NULL,
    "article_text" character varying NOT NULL,
    "live" boolean NOT NULL,
    "lang" character varying NOT NULL,
    "date_created" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT "PK_40808690eb7b915046558c0f81b" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "article" ("id", "category", "subcategory", "article_heading", "article_text", "live", "lang", "date_created") VALUES
('2eed7988-714e-4a74-9bd3-a75d91b5a072',	'700e0378-2c0a-47bb-815b-757bec70d463',	'c7809bc0-41ba-4f7d-9014-c4456f29d220',	'What happens during the menstrual cycle?',	'The menstrual cycle begins with your period, which lasts about 2-7 days.

During the first part of the menstrual cycle, an egg in the ovaries starts to mature and the lining (or walls) of the uterus begin to thicken with blood and tissue. 

When the egg is ready, it is released from one of the ovaries (this is called ''ovulation'') and moves down a tube (called the ''fallopian tube'') towards the uterus.

If the egg is not fertilised, the blood and tissue lining the uterus are not needed and they are shed through the vagina, which is what you experience during your period.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('5c7b69c8-cf96-4f3f-9936-1b0700f6c7d7',	'700e0378-2c0a-47bb-815b-757bec70d463',	'c7809bc0-41ba-4f7d-9014-c4456f29d220',	'What are periods/menstruation?',	'Periods are a natural body function that allow women to get pregnant and have babies. During your periods, blood from the uterus (womb) passes through the vagina and out of the body. Periods are totally normal and healthy!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('1e89e648-81f5-4442-a1d3-a9d00476ac9e',	'700e0378-2c0a-47bb-815b-757bec70d463',	'c7809bc0-41ba-4f7d-9014-c4456f29d220',	'What age do girls start their periods?
At what age do periods stop? ',	'Girls'' periods usually begin between the ages of 9–15, about two years after their breasts start to develop.  The average age is 12–13, but it may start as early as 8 or as late as 15 or 16.

Women usually stop having periods between the ages of 45 and 55.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('55fdca5a-5437-4881-bc8a-1fc47de0eaae',	'700e0378-2c0a-47bb-815b-757bec70d463',	'c7809bc0-41ba-4f7d-9014-c4456f29d220',	'Are periods normal?',	'Yes! It''s a completely natural process that is part of women and girls'' menstrual cycle. It is a sign of growing up and good health.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('bf085882-4683-42a3-baa1-a05fae5d4a78',	'700e0378-2c0a-47bb-815b-757bec70d463',	'c7809bc0-41ba-4f7d-9014-c4456f29d220',	'What is menarche?',	'Menarche is a scientific word for a girl''s first period.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('48af345e-38a6-433e-8124-4938fc544972',	'700e0378-2c0a-47bb-815b-757bec70d463',	'c7809bc0-41ba-4f7d-9014-c4456f29d220',	'Why do girls have periods?',	'Periods are part of the reproductive system. The reproductive system is made up of the body parts that enable people to have children.

Every menstrual cycle, the lining of a your uterus prepares for a fertilised egg by becoming thick with blood and tissue. If an egg is fertilised by sperm, the fertilised egg implants into this lining and grows into a baby. But if there is no fertilised egg, then the lining is shed through your vagina.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('15ccacab-a754-49cd-ae8f-b3c229ce0bcb',	'700e0378-2c0a-47bb-815b-757bec70d463',	'c7809bc0-41ba-4f7d-9014-c4456f29d220',	'Can someone tell if I have my period?',	'No, not unless you tell them. But when you first get your period, you may want to tell your mother, older sister or another adult you trust. That way they can help you and answer your questions.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('6337c438-f77e-484c-8e15-2856c404a037',	'700e0378-2c0a-47bb-815b-757bec70d463',	'c7809bc0-41ba-4f7d-9014-c4456f29d220',	'How long do periods last?',	'Periods usually last from 2-7 days, but may sometimes be longer.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('7cb1b5b2-0bd5-4672-be85-a5f78388c488',	'700e0378-2c0a-47bb-815b-757bec70d463',	'3484ca82-bbbf-4bfd-b9d8-68bec190ebe1',	'What does it mean if I miss a period?',	'Sometimes you can skip a period for no reason at all, especially during the first few years of your period. 

Other things that can affect the timing of your period are:

• stress
• medication
• some pregnancy prevention methods
• diet, especially if it causes you to become very thin
• over-exercising
• traveling.

If a girl has had sex without using a pregnancy prevention method (contraception), a missed period is a sign that she may be pregnant.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('369e0969-b729-483b-b070-a80647f9c8ea',	'700e0378-2c0a-47bb-815b-757bec70d463',	'c7809bc0-41ba-4f7d-9014-c4456f29d220',	'What is a menstrual cycle?',	'The menstrual cycle starts with the first day of your period and ends with the start of your next period. It''s called a cycle because it repeats regularly. 

During the cycle, hormones (chemicals in your body) go up and down, causing other body changes.
 
An entire menstrual cycle can last between 21 and 38 days, but for most girls and women, the length often changes from cycle to cycle, and it changes over the years.

Everybody is different, and variations in your cycle are normal. When girls first start to get periods, their menstrual cycle is often not regular. Periods can come one month and not the next, or come only a couple of weeks apart. 

It may take a few years before a girl’s cycle is more regular. Comparing your cycle to others, or what''s ''normal'' can make you feel there''s something wrong, although everything is probably OK. 

Using Oky to track your period will help you see what is normal for YOU. If you notice something unusual for you personally, then it probably is a good idea to talk to a grown up you trust, and a doctor.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('4a327b58-a492-4105-bc4e-d057d180a002',	'700e0378-2c0a-47bb-815b-757bec70d463',	'3484ca82-bbbf-4bfd-b9d8-68bec190ebe1',	'My cycle is irregular, is this a problem?',	'An irregular cycle is normal, especially during the first few years of menstruation. Small variations in your cycle are normal and healthy.

By using Oky, you will be able to find out what your personal normal cycle is!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('bdc58e1c-8d88-4212-be7c-8c5e4ea9defe',	'700e0378-2c0a-47bb-815b-757bec70d463',	'1b79055a-f881-48e7-8f8a-8d8058016332',	'How much blood do girls lose during their period?',	'Girls usually lose about 2-4 tablespoons (30-60ml) of blood during their period. However, it can vary between 5 and 80ml. 

Most girls and women have some days with a heavier flow and others with a lighter flow during their period.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('f4601cda-3375-4f3e-9a2e-2086b3469110',	'700e0378-2c0a-47bb-815b-757bec70d463',	'1b79055a-f881-48e7-8f8a-8d8058016332',	'What is the menstrual flow made of?',	'Menstrual flow is made of the blood and tissue that lines your uterus (to prepare for a possible pregnancy).',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('832510f7-4af3-473b-98c2-922362b9841e',	'700e0378-2c0a-47bb-815b-757bec70d463',	'1b79055a-f881-48e7-8f8a-8d8058016332',	'My menstrual flow is heavy, is this normal?',	'You have a heavy flow if you have more than 16 soaked pads or tampons during one period. This may  be normal for you.

If your flow is heavy and you are worried about it, talk to a health professional.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('7eee2a74-e880-4093-9a02-ce9d20bf21c8',	'700e0378-2c0a-47bb-815b-757bec70d463',	'1b79055a-f881-48e7-8f8a-8d8058016332',	'I have lots of clots in my menstrual flow, is this normal?',	'Yes, it is normal to have clots (thicker bits) in your menstrual flow. Menstrual flow is mostly made of the blood and tissue that was lining the uterus - it is not just blood. That''s why there are usually some clots.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('700cbdbd-0a52-4392-965e-c8863453d029',	'700e0378-2c0a-47bb-815b-757bec70d463',	'1b79055a-f881-48e7-8f8a-8d8058016332',	'The colour of my menstrual flow changes – sometimes it’s dark and other times it’s light, is this normal?',	'It’s normal for the color of your menstrual flow to change! For example, the color depends on how long it has been exposed to air. It does not have anything to do with your health.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('390a2c2b-cad7-4791-92dc-3be5a7b1ceba',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b10d5dba-3b54-42cc-b937-ba037ce109ee',	'What causes cramps?',	'Cramps are caused by chemicals, called prostaglandins, that your body produces to make the muscles of the uterus contract.

The contracting muscles help push the blood and tissue out of your uterus into your vagina during your period.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('c502e300-1e95-46df-bbd8-5326d388c029',	'700e0378-2c0a-47bb-815b-757bec70d463',	'1b79055a-f881-48e7-8f8a-8d8058016332',	'My menstrual flow is light, is this normal?',	'Periods vary between women and often from month to month. So it’s important to know what’s ''normal'' for you in terms of flow. Having a light flow may be normal for you. 

Using Oky can help you notice when something about your period changes. If your period is lighter than normal for you, it could be caused by pregnancy, stress, illness, weight gain or loss, your age, or using contraception that has hormones in it.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('a2712f26-414b-4f2a-b4d4-d9923f75240a',	'700e0378-2c0a-47bb-815b-757bec70d463',	'1b79055a-f881-48e7-8f8a-8d8058016332',	'I have white stuff in my underwear, is this normal?',	'Yes, this white stuff is called ''vaginal discharge'' and all girls and women have it!

• Just after your period, there may be little discharge, a few days later, it usually becomes sticky and white or yellowish. 
• Around the time the egg is going to be released and women are fertile (can get pregnant), the discharge becomes clear and very slippery, like egg whites.
• After the egg is released, it decreases and is sticky and cloudy. 

The discharge can also change if the woman is aroused, pregnant, or using certain contraception methods. 

Some changes in vaginal discharge are a sign of a possible health problem, for example:
• if the discharge is grey, green, yellow or brown in color
• if there is a lot of it, especially with itching or soreness
• much thinner or thicker discharge than usual or lumpy
• an unpleasant smell like fish or metal.

You should see a health professional if you think you have any of these changes.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('f6f3dc28-0955-4473-a7c9-f8a1eaf45a9b',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'What is a sanitary pad?',	'A sanitary pad, also known as a sanitary napkin or towel, is a thin pad made of absorbent material that collects the menstrual flow.

Disposable sanitary pads are used once and then thrown away. Reusable sanitary pads are cloth pads that can be washed, dried and reused many times.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('43fc9f1f-14a0-4a80-aff8-76618b1848a8',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'How do I use a tampon?',	'Select the type of tampon for the heaviness of your flow - light, regular, or super. It’s best to use one that will last a few hours.

Wash your hands and then push the tampon into your vagina using the applicator or your finger, depending on what kind of tampon you have. 

After 4-8 hours, change your tampon by gently pulling on the string. Wrap used tampons in paper and throw them away in the bin — don’t drop them in the latrine or flush them.

Don’t leave your tampon in for more than 8 hours. You can wear a tampon overnight, but put it in right before bed and change it as soon as you get up in the morning.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('46769173-9c50-43d3-9183-a7e1edf7d77a',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b10d5dba-3b54-42cc-b937-ba037ce109ee',	'What should I do about pain during my period?',	'There are a few ways to help ease cramps:

• Take over-the-counter pain medicine like paracetamol, ibuprofen, naproxen, or acetaminophen. Always follow the instructions on the bottle.
• Exercise.
• Put a hot water bottle or heating pad on your belly or lower back.
• Take a hot bath or shower.
• Have an orgasm (by yourself or with a partner).
• Rest.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('f8b2b6b0-6508-4e87-ab12-e46c91049f87',	'54b24a83-7fa4-4513-9afe-f21ae1eda9c0',	'd8fc9bd6-a7ee-4a7a-af44-d9ea91eb03c1',	'Does eating cold food cause cramps?',	'Eating cold food does not cause cramps.

Cramps are caused by chemicals, called prostaglandins, that make the muscles of the uterus contract and push the blood and tissue into your vagina. These are not affected by cold foods!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('7240c952-ee71-4985-9007-a083364ba394',	'7940acf8-f02c-4763-bd60-14d9f186c8aa',	'd171d610-6715-436f-8d02-18e3d570e0b1',	'What happens to girls and boys during puberty?
',	'During puberty, your brain sends messages to different organs to start making hormones, and these hormones cause your body to develop. 

Physically, most girls will develop in this order: 

• Breast growth, often on one side first. This lasts about two years.
• Hair growth on the genitals, usually a few months later. 
• The wall of the vagina gets thicker and the uterus and ovaries get bigger (girls won''t notice this of course!)
• Periods begin, usually 2-3 years after breast growth starts, meaning girls can now become pregnant. 
• The amount of discharge from the vagina increases. 
• Underarm hair grows and sweat has a stronger smell. 
• Girls grow taller, often suddenly.
• Hips can get wider.
• Voices can get a bit lower.
• Skin can become oilier, sometimes causing pimples or acne.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('cc05f1b3-dbb7-4557-aa70-df5e26fe2da5',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'e96356b5-dac3-418b-af34-be15c7038056',	'Is it true that women should eat / sleep / stay separately from their family during her period?',	'There is no scientific basis for this belief, but some religions do have rules about women who have their periods.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('0929b673-1fe7-4f18-af4a-6e40785cc43c',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'19962fc5-23c9-4968-a1d2-f26b603b8072',	'',	'Embrace your unique power! You deserve everything you wish.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('27bd13f1-249c-4bea-8c3e-edd439aef51a',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'51caab87-7719-41e1-b01e-69704547818a',	'Can I go to school when I have my period?',	'Yes! Girls are free to participate in any normal activity.

To be prepared at school, you might want to keep things like underwear, sanitary pads, and anything else you normally need to manage your period in your school bag. 

If you are unprepared for your period, ask a trusted friend or adult for help.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('6ff4d892-c678-47d8-ac26-2c95b92bedc3',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'46ae80de-7f64-4d91-8aca-640a15d790d4',	'They say you should not take baths during periods, is it true?',	'No! Bathing and washing during your period is necessary. It will keep you feeling clean and fresh and may help prevent an infection.

Do not try to clean the inside of your vagina because it can make an infections more likely.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('9d34e212-e562-4ae5-94ad-7cef00db5545',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'How do I dispose of a used pad?',	'To dispose of a used pad or cloth, wrap it in paper and put it in the bin. If you don''t have paper, just put it in the bin. 

Do not drop pads or cloths in the latrine pit or try to flush them in a toilet because they can block them.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('b87fa1e2-8f63-4d1f-8123-a97795065c43',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'How often should I change my tampon?',	'You should change your tampoon every 4-8 hours depending on your flow. 

Tampons that are left inside for too long can cause health problems like Toxic Shock Syndrome. However, when used properly, tampons do not cause health problems.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('258abe76-8f2d-41d2-81b9-94be78dd9ceb',	'8048de61-64b9-4c14-b4b7-134982d999e0',	'98405a27-53ff-4767-8d7a-b07a0e7fc95d',	'How are babies made?',	'Babies are made when sperm from a man joins with an egg from a woman, and implants in the woman''s uterus.

When a couple has sex and the man ejaculates semen into the woman''s vagina, the semen contains sperm. This sperm swims up the vagina, through the uterus, and into the fallopian tubes (the tubes which connect the ovaries to the uterus). 

If there is an egg  there, usually one sperm can fertilise it. The fertilised egg then travels down into the uterus and implants itself into the lining there, and gradually transforms into a baby!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('08c37310-36a9-45f1-b762-76c9344f7298',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'e96356b5-dac3-418b-af34-be15c7038056',	'Why are there so many myths about periods?',	'Periods were seen as a mystery before science could explain them. So a lot of different ideas and beliefs were created to explain periods in ancient societies and cultures. 

Many such ideas and beliefs have been proven wrong by science, but they are still followed today.

We call these ideas menstrual myths or taboos. Many myths suggest that periods are a disease or a curse, or that a woman''s body is polluted when she is experiencing her periods. 

Such beliefs cause discrimination against women and at times, can lower women''s self-esteem and opportunities for growth.

Talk to your teacher and your friends to plan how you can help to get rid of these myths!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('522f1113-0af8-4b9e-971d-088eb792e9d6',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'e96356b5-dac3-418b-af34-be15c7038056',	'In my country there''s a belief that women who have their period shouldn''t be around strong smells like nail polish. Why is this?',	'There is no scientific basis for this belief. There is no reason for a woman or girl to avoid strong smells during her period!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('2537e185-318f-434d-a6df-e7a4a16ba605',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'19962fc5-23c9-4968-a1d2-f26b603b8072',	'',	'Periods don''t need to be a big deal!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('e4e66112-ade1-4d0f-acc8-a43bc03c4ce8',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'46ae80de-7f64-4d91-8aca-640a15d790d4',	'Should you wash the inside of your vagina during your period?',	'No! You should never try to wash the inside of your vagina with water, soap or any other product. 

The vagina cleans itself and trying to wash it can upset its natural balance and lead to an infections. All you need to do is wash the outside with water.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('aec17250-ec3b-427b-8a06-99a4f586c124',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'What is a menstrual cup?',	'A menstrual cup is a flexible, bell-shaped container that is used to collect menstrual flow.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('f691ccf2-5658-47d2-8f5a-e11ccfb93f3c',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'Does using a tampon cause me to lose my virginity?',	'No, to lose your virginity, you have to have sex. 

Sometimes people confuse having a hymen with virginity. The hymen is a stretchy tissue that surrounds or covers part or all of the opening between the vagina and the uterus. 

Hymens  differ a lot among girls and they are stretched over time by physical activity or sports, inserting tampons, menstrual cups, or fingers in the vagina, or by having sex. 

But when you insert a tampon for the first time, your hymen will most likely stretch to allow it to pass through.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('ebf5e5f9-d08c-4640-9ed3-84ab7b098ff9',	'7940acf8-f02c-4763-bd60-14d9f186c8aa',	'd171d610-6715-436f-8d02-18e3d570e0b1',	'When does puberty start?',	'For most girls, puberty starts between the ages of 9 and 13, but it may sometimes start a bit earlier or later. 

Everyone goes through puberty, but it is normal for the changes to happen at different speeds for each person. The first change girls will notice is breast growth, often on one side first. 

Boys start puberty a couple of years later than girls, usually when they are between 10 and 14 years old.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('229b9fe6-1c0c-4414-8dad-111306bb1fa9',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'e96356b5-dac3-418b-af34-be15c7038056',	'Why are some women told not to not attend religious functions or prepare food during their period?',	'There is no medical reason for a woman or girl not to attend religious functions or prepare food when menstruating, but some religions do have rules around this.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('9f50d58d-bdf0-4159-8038-53b7aa246079',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'46ae80de-7f64-4d91-8aca-640a15d790d4',	'How can I stay clean during my period?',	'Periods can make a mess, especially if they start when you were not expecting it! But remember that they are a completely natural process.

Staying clean is simple: 

• Wash outside of your vagina (and thighs if they got blood on them) with clean water once or twice a day, if you can. 
• Wash any clothing that got stained with cold water and soap. 
• Change your pad, cloth or tampon as soon as it is getting full to prevent leaks (for tampons, change at least every 4-8 hours).',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('9850db77-932f-4d72-83fb-70dd31aaa490',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'How do I use a menstrual cup?',	'To use a menstrual cup, insert it into your vagina according to the instructions, and leave it there. When properly inserted, the rim of the cup forms a seal with the walls of the vagina to prevent leaks. You can leave it in for up to 12 hours. 

To pull it out of the vagina, hold the stem at the base of the cup tightly between your thumb and the index finger and pull out. 

After disposing of the menstrual flow, wash the cup and its rim with water and use it agin. 

After your period is over, clean your cup with boiling water and dry it completely. When your next period begins, make sure that your cup is still clean before using it.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('10e49b5e-5ffa-4e5d-8d61-76af07d21840',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b10d5dba-3b54-42cc-b937-ba037ce109ee',	'What is Premenstrual Syndrome (PMS)?',	'Premenstrual Syndrome is the collection of physical and emotional symptoms that happen one to two weeks before your period.

They can include things like acne, tender breasts, bloating, feeling tired, irritability, and mood changes. Not all women get PMS, and your symptoms can also vary from month to month and throughout your life.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('47c56ff3-1565-48bc-9b50-b771185faff0',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'365b4a09-e9c0-4882-a55e-7f3e55ac1e80',	'I am ashamed when I have my period.',	'Your period is nothing to be ashamed of! It means that your body is healthy and strong. Did you know that in some places in the world, there are even period pride celebrations? 

Become a champion in your community and help your friends and neighbours to feel confident about their periods, too!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('a6d8ce05-7384-4aa3-a2c0-bc3b771b4ec6',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'19962fc5-23c9-4968-a1d2-f26b603b8072',	'',	'If you''re trying to be normal, you''ll never know how amazing you can be! (Maya Angelou)',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('80f77ce1-ec01-444c-8cc2-e283280c6a13',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'6016485e-561c-4c77-8f19-4e48c4be253f',	'How can I stay fashionable when I''m on my period?',	'You can wear anything you want during your period. The best fashion advice is: Be true to you! Feel good and comfortable in what you wear, and you will start to feel confident. 

Remember that you don''t need to always be fashionable, there are lots more qualities for girls to aspire to.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('8914cabc-c3d9-4096-854b-c915c13b24fa',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'What should I use to absorb blood when I have my period?',	'There are lots of options to absorb your menstrual flow! 

These include disposable sanitary pads, reusable cloths, tampons, menstrual cups, and absorbent underwear. 

Find out which ones you can get in your area. You may want to try a few to see which work best for you.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('e83d8392-5cb1-4ef6-b671-3fc837072b20',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'What is a tampon?',	'Tampons are little ''plugs'' made of cotton that fit inside your vagina and soak up menstrual flow. Some tampons come with an applicator that helps you put in the tampon. 

Tampons have a string attached to the end, so you can easily pull them out.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('0856bd96-6215-4d19-b88b-6ec3f342a8f3',	'54b24a83-7fa4-4513-9afe-f21ae1eda9c0',	'd8fc9bd6-a7ee-4a7a-af44-d9ea91eb03c1',	'What food items should I NOT eat during my period?',	'You can eat all food during your period! As is always the case, it''s better to eat healthily with fresh vegetables and fruits, and to avoid too much processed food if you can.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('a1b3ec3c-3cb4-4302-877d-580db8cee2df',	'7940acf8-f02c-4763-bd60-14d9f186c8aa',	'd171d610-6715-436f-8d02-18e3d570e0b1',	'What is puberty?',	'Puberty is the time when your body changes from that of a child into that of an adult. You also start growing up emotionally and socially. 

During puberty you mature sexually and become able to become pregnant, (if you''re a girl), and cause pregnancy (if you''re a guy), if you have sex.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('ffbd895e-3f4a-4865-ade4-7af1f0b3b51d',	'8048de61-64b9-4c14-b4b7-134982d999e0',	'1ba79685-8198-4321-8485-c687b8b82283',	'What are ''safe days'' when I can have unprotected sex without getting pregnant?',	'It is true that there are some days during the menstrual cycle which are ''safer'' than others, meaning your chances of getting pregnant are lower than on other days. 

The problem is that it is very hard to predict when they will be because our cycles go sometimes change from month to month. And remember that there are no days that are safe when it comes to Sexually Transmitted Infections (STIs) or HIV - if you have sex without using a condom, you may get pregnant or get an STI, even during your period or just after it ends. 

You can even get pregnant if you have never had a period before, during your first period, or the first time you have sex. If you do not want to become pregnant, do not take any risks - always use contraception when you have sex. 

Remember, do not rely on Oky to avoid pregnancy - it is not designed to help you do that successfully!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('b4a8a555-14a4-4aad-b017-ccd5a74eac75',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'e96356b5-dac3-418b-af34-be15c7038056',	'Is it true that taking a bath/shower or washing the body during your periods causes infection or infertility?',	'This is false! Keeping clean during your period is necessary and prevents you from getting infections.

However, avoid the practice of ''douching'' – forcing water through the vagina to clean it – because it may make infections more likely.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('83fd0e94-127d-42ef-aa44-d3e5c9cb756e',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'4be262d8-4f93-4681-ae4c-a758d2c2306f',	'I''m told it''s bad to hate my period, but some days I just do! Am I wrong?',	'Whatever you feel is ok! You don''t need to be ashamed of your period, but you don''t always have to enjoy it! Sometimes there will be bad days. 

You might have different feelings about your period and they may change from month to month - that is totally fine. 

Take care of yourself, and if you feel comfortable, share your feelings with someone you trust - perhaps a friend. It might help!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('e42fd570-66b8-485e-814d-d17324739566',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'19962fc5-23c9-4968-a1d2-f26b603b8072',	'',	'Believe in yourself and you will be unstoppable!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('2233f79a-6164-4e6d-917e-d153b68fd7e6',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'46ae80de-7f64-4d91-8aca-640a15d790d4',	'Should I bathe when I have my period?',	'Yes, you should bathe every day as you usually do. If you can, clean your vulva (the outside part of your genitals) twice a day with water. Dry yourself and put a fresh cloth or pad on your underwear. 

Never try to wash out your vagina (the inside part) with water or anything else because it may cause you to get an infection.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('07368741-7fc9-4a61-b6f0-8d029000e8b7',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'What is Toxic Shock Syndrome? Will I get it if I use a tampon?',	'If a tampon is in your vagina for a long time it can very rarely cause an illness called Toxic Shock Syndrome. Toxic Shock Syndrome is a very rare, but very dangerous infection.

If you’re using tampons and have vomiting, a high fever, diarrhea, muscle aches, a sore throat, dizziness, faintness or weakness, and a sunburn-type rash, take the tampon out and get medical help right away. 

But please don''t let this put you off, most girls use tampons safely without getting Toxic Shock Syndrome!

The best advice is to use the lowest absorbency tampon you can, and to change your tampon every 4-8 hours or as often as needed. You can also use pads from time to time.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('01ccf920-7fed-46d3-a5de-50cd2704f9da',	'54b24a83-7fa4-4513-9afe-f21ae1eda9c0',	'd8fc9bd6-a7ee-4a7a-af44-d9ea91eb03c1',	'Do periods cause anaemia or iron deficiency?',	'If you do not eat enough iron rich foods to replace the iron you lose during your period, you may have an iron deficiency, called anaemia, especially if you have a heavy menstrual flow. 

If you feel unusually tired or weak or dizzy, you may be anaemic and should see a health professional. You may be able to prevent anaemia by eating foods rich in iron or you may need to take iron tablets.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('249d87bd-5ddf-42c4-be14-fc47cace8e3c',	'8048de61-64b9-4c14-b4b7-134982d999e0',	'79fe6923-ebe4-4cb8-8ced-615fceefde21',	'How does Oky estimate fertile days?',	'If you have a very regular cycle (meaning you always get your period every 26-32 days), Oky can use your cycle length to predict when your fertile days are.

But you should NOT use Oky fertile day predictions to prevent pregnancy, because ovulation can shift from month to month. If you have vaginal sex, always use protection (like condoms) to prevent pregnancy!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('95abb071-1731-422d-858e-65be93f49f4f',	'926f2cd1-74a5-4d2a-860c-96c3e9dca8f0',	'3306a78f-dc46-4816-b7ab-92ce7714e1d9',	'What is the difference between gender and sex?',	'Your sex is biologically determined. It is a result of your chromosomes, anatomy and hormones. 

Gender is socially determined. It is defined by the roles, responsibilities and behaviors that are expected of men and women just because they happen to be men or women.

Gender varies within and between cultures and changes over time, but sex is the same everywhere.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('3dbffeb8-8070-4604-ae97-638812d45b1e',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'How do I use a sanitary pad or cloth?',	'Place the pad or cloth on your underwear - do not insert it in your vagina. Change the pad or cloth every two to six hours or more frequently if you think that it is full. 

If you are using a reusable cloth pad, wash it first with cold water, and then with hot water and mild soap, and dry in the sunshine or iron before reusing it.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('04d739cb-a959-4574-af47-f0378346e2fd',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'What are the different types of sanitary pads?',	'Sanitary pads can be disposable (one time use) or reusable. They come in different shapes and sizes and can have different capacity to absorb heavy or light menstrual flow. 

You will have to experiment with different kinds of sanitary pads to know which one best suits your needs on the different days of your period.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('3e719091-7b98-46e8-8ecf-cc347586e3e9',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b10d5dba-3b54-42cc-b937-ba037ce109ee',	'Should I worry about my period pains?',	'Cramps are a very normal part of getting your period, but if your cramps are so painful that they get in the way of school or work, see a health professional.
 
They can make sure there is nothing serious going on and may suggest using  hormonal contraception to relieve the pain (like the pill, patch, ring, implant, and hormonal IUD).',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('a3191de6-c63d-442f-be71-ff2e0976c81f',	'54b24a83-7fa4-4513-9afe-f21ae1eda9c0',	'1dd8a452-3fad-41bd-a833-63a77742fca7',	'Should I exercise during my period?',	'Yes, you should exercise during your period!

Exercise increases your blood flow and can help reduce any pain and cramping you have. You might not feel like it, but try participating in your physical education class at school even if you have your period.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('0ddfd3bb-52d7-4218-b50c-b075a48776d7',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'cdd466a9-9d5d-4abe-89d8-899a528ac56b',	'',	'Menstruasi itu.. Bukanlah masalah besar!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('d148ed03-b15e-4d91-b6da-20d6c5c74920',	'7940acf8-f02c-4763-bd60-14d9f186c8aa',	'd171d610-6715-436f-8d02-18e3d570e0b1',	'What is adolescence?',	'Adolescence is the period from age 10 to 19, when a young person develops from a child into an adult, physically, emotionally and socially. 

In addition to the physical changes in puberty, young people experience emotional and social changes:

• Emotional changes include having strong and quickly changing feelings and moods, and having sexual feelings and desires.
• Social changes include wanting more privacy and more independence from your parents, wanting to fit in with your peers, valuing your friendships more, and becoming interested in love and romance!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('e0362622-fd7c-46bb-98f1-b4ff01699199',	'8048de61-64b9-4c14-b4b7-134982d999e0',	'79fe6923-ebe4-4cb8-8ced-615fceefde21',	'What are fertile days?',	'Your fertile days are the days you are most likely to get pregnant if you have sex.

These are the days after your ovaries have released an egg. This is usually about 14 days before the next period starts. ',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('eaa2708b-cec0-4a8f-90b4-39b3c2248821',	'926f2cd1-74a5-4d2a-860c-96c3e9dca8f0',	'b8fafa9b-c5d8-4a60-b105-d685fa093692',	'What do periods have to do with boys?',	'Men and boys affect how women and girls experience their periods through their roles as husbands, fathers, brothers, peers, teachers, community leaders, entrepreneurs, employers, and policymakers.

Periods can be stressful and embarrassing for some girls. When men and boys are understanding and try to be helpful, it makes periods a better experience for girls and women.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('23db03b7-9024-4592-b3e6-b1e774567aac',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'e96356b5-dac3-418b-af34-be15c7038056',	'Is it true that women who have their periods are impure, dirty, sick or even cursed?',	'No, not at all! This is a false idea that has no basis in science.

Periods are natural and normal for women and necessary for women to get pregnant and have children. Menstrual flow is just a harmless mixture of blood and tissue. 

This myth is often used as a reason to stop women who are having their periods from taking part in various social, work, school or religious events.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('11465d9d-1899-4aa8-add5-af458a674b20',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'e96356b5-dac3-418b-af34-be15c7038056',	'Is it true that improper disposal of a pad / blood causes bad things to happen to a girl or her community?',	'This is false! It is important to dispose of sanitary pads or tampons properly by wrapping them and putting them in the bin or burning them with other garbage for hygiene reasons (just like when going to the toilet) but not doing this won''t make any bad things happen to you!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('f270d013-9b2a-45f2-aa99-b8bf30586658',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'19962fc5-23c9-4968-a1d2-f26b603b8072',	'',	'If you''re feeling down, try getting active with sport, dance or any exercise - get a friend to join you or just dance alone like nobody''s watching!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('9f2cd00f-c68f-462f-88aa-41ed015402bc',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'6016485e-561c-4c77-8f19-4e48c4be253f',	'What clothes should I wear when I''m on my period?',	'Dark colours, calming colours, bold colours... Whatever you feel good in! Lots of girls and women choose to wear darker, looser clothes during their period to feel more comfortable, but you should wear what you feel like.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('d7d00a63-f204-482c-ac47-1455d067be48',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'0d0467ad-f70e-461e-873e-d34663be4798',	'I am afraid to have my first period!',	'Waiting for your first period can be both scary and exciting, but everything will be fine and you don''t need to be afraid!

You may feel shocked or scared to see blood on your underwear, but it is completely normal and natural. 

To prepare, talk to other girls and women whom you trust, such as your mother, sister, aunt, grandmother, female friend or older woman in your community and ask them about it. 

When you do get your period, we hope you will feel proud that you are growing up and becoming a woman and have the knowledge you need to manage your periods every month!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('73d56a7d-57b2-4cf7-bef5-093e00566e7f',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'How often should I change a menstrual cup?',	'The menstrual cup needs to be taken out every 12 hours and the menstrual flow disposed of. Most cups will last between 2 and 10 years. You should replace your cup if it has any tears, holes or is not in good condition.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('811d1ccf-886a-47ff-9f44-0f343eb92a8a',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b10d5dba-3b54-42cc-b937-ba037ce109ee',	'Does it hurt to have my period?',	'Whether or not periods are painful varies among girls and from period to period. 

Some girls feel no pain at all, some have slight pains, and some have a lot of pain and may need to take a pain reliever. Periods are often more painful during your teens.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('985564d4-eb13-40ab-9132-724a2902333c',	'54b24a83-7fa4-4513-9afe-f21ae1eda9c0',	'd8fc9bd6-a7ee-4a7a-af44-d9ea91eb03c1',	'What should I eat when I have my period?',	'You should eat all types of food as you normally do. It is a good idea to eat foods that contain iron to replace iron lost during your period, like red meat, red lentils, and green leafy vegetables. 

Eating fresh fruit and foods high in calcium can alleviate some symptoms of premenstrual syndrome (PMS). Drink lots of water too!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('0560b6aa-7ddd-4825-b892-b5aec07fb570',	'8048de61-64b9-4c14-b4b7-134982d999e0',	'1ba79685-8198-4321-8485-c687b8b82283',	'Can I have sex during my period?',	'Yes, you can have sex during your period - it is not harmful. It is up to the woman and her partner to decide if that is something they want to do.

Some people may feel uncomfortable having sex when the woman has her period because they find it too messy or don''t like the sight of period blood, and that is their choice.

Remember to always use a condom when you have sex to protect yourself from sexually transmitted infections and unwanted pregnancy. You can still get pregnant if you have unprotected sex during your period, if you have a short cycle or happen to ovulate early!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('ca7e3ce1-6e04-4bc1-b986-63b9eb6bf08f',	'926f2cd1-74a5-4d2a-860c-96c3e9dca8f0',	'b8fafa9b-c5d8-4a60-b105-d685fa093692',	'Why don''t boys get periods?',	'No, boys do not get periods because their reproductive body parts are different to women''s!

Female body parts do things like produce eggs, provide a place for a fertilised egg to grow, and have periods. Male body parts produce sperm, and release fluid with sperm in it (called semen) to fertilise the eggs with.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('4399c5c1-087c-49c0-8867-f8c33c67e145',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'e96356b5-dac3-418b-af34-be15c7038056',	'Do periods mean that a girl is ready to get married?',	'This is false. Even after you start getting periods, your body is still growing and developing. Getting married and having a baby before the age of 18 can lead to health problems for you and your child.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('ed959b2c-f782-4db8-ac1b-2f46f1f39df3',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'19962fc5-23c9-4968-a1d2-f26b603b8072',	'',	'To be beautiful means to be yourself. You are beautiful!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('81a422cb-b837-40f8-949f-eb101c146376',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b7448bda-0584-4184-9d36-6aecc340e49c',	'How often should I change my pad?',	'During your periods, change your pads as often as necessary to prevent them from becoming soaked with menstrual flow, which could lead to a leak. 

You will learn to know how long you need to wait before you change pads during your periods. In general, pads should be changed 4-6 times a day or more often when your flow is heavy.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('c84dbc62-ca1a-4c4d-ac6d-f68f75fdadd7',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'c13240f8-8a2e-4c92-a290-48dfd5823caf',	'Siklus menstruasi saya tidak rutin, apakah itu masalah?',	'Siklus yang tidak rutin itu sangat normal, terutama pada tahun-tahun awal menstruasi. Ini adalah suatu hal yang sehat dan normal.

Menggunakan Oky bisa membantumu untuk tahu kapan siklusmu yang normal.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('23c62fd2-0b6c-4121-a6b1-c609f78757f9',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'b10d5dba-3b54-42cc-b937-ba037ce109ee',	'Is it normal to have pain during my period?',	'Yes it is. Many women and girls feel pain, such as  cramps or lower back aches, during their periods. Some of us may feel nausea, fatigue, or faint, get headaches, or have general discomfort. 

The amount of pain varies from person to person and from cycle to cycle. It can also change over time.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('6c4f76fe-967d-4143-a07a-7dc88f164e02',	'54b24a83-7fa4-4513-9afe-f21ae1eda9c0',	'd8fc9bd6-a7ee-4a7a-af44-d9ea91eb03c1',	'Does eating certain foods cause the smell of my menstrual flow to change?',	'No, eating certain foods does not change the smell of your menstrual flow. You can eat anything you would like while you are on your period! If you can, it is a good idea to eat foods that have a lot of iron and calcium.',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('7e20c991-dad8-40ab-91ff-357a8f42ff01',	'7940acf8-f02c-4763-bd60-14d9f186c8aa',	'd171d610-6715-436f-8d02-18e3d570e0b1',	'What is the difference between puberty and adolescence?',	'Puberty describes all the changes in your body, while adolescence includes ALL of the changes that happen when a child becomes an adult (physical, emotional and social).',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('a1da1e0c-a589-4c2e-b5ba-37efe9dc0dbd',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'365b4a09-e9c0-4882-a55e-7f3e55ac1e80',	'I feel embarrassed to talk about my period to others.',	'This is very understandable, as girls and women are often made to feel that periods are an embarassing subject. 

Oky is here to tell you that periods are totally normal, and nothing to be embarrassed about. The more you talk about periods, first with someone you really trust, then to more people, the less embarrassing it will feel. 

However, if you really don''t want to talk about periods, you don''t have to!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('4ebda943-6ee6-45f3-bc8b-5963ff6bd021',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'e96356b5-dac3-418b-af34-be15c7038056',	'Is it true that jumping, running, swimming, falling and lifting heavy things can affect my period?',	'There is no scientific basis for this belief. Jumping, running, swimming, falling or lifting heavy objects during your period will not affect you. They will not cause you to have a heavier menstrual flow or increase any pain.

In fact, exercise helps to increase your blood flow and may help reduce pain and cramping!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('0cdbaca2-b961-4f6d-951a-3357de94b706',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'19962fc5-23c9-4968-a1d2-f26b603b8072',	'',	'To lift yourself up, lift another girl up - it can feel good!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('0b944030-1daa-43f3-9169-97b3540ff961',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'6016485e-561c-4c77-8f19-4e48c4be253f',	'What''s the best beauty advice when I''m on my period?',	'The best beauty advice - be healthy! Get enough sleep, drink lots of water, eat nutritious food and stay active with exercise!

Also - be your unique self, because (even if it''s one of those days and you don''t feel like it) you are beautiful as you are!',	'1',	'en',	'2019-12-11 16:00:37.146709'),
('eca08870-841c-4f05-872a-e37593c2fd97',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Kenapa perempuan menstruasi?',	'Menstruasi merupakan bagian dari sistem reproduksi yang membuat kita bisa memiliki anak.

Setiap siklus menstruasi, dinding rahim-mu menebal karena darah dan sel-sel jaringannya untuk tempat calon bayi. Jika telur kamu dibuahi oleh sperma, telur kamu akan menempel di dinding rahim dan berkembang menjadi bayi. Tapi jika tidak ada pembuahan, maka dinding rahim ini akan dipaksa keluar melalui vaginamu.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('60901f63-6b96-4fda-99a5-0eec25901c6f',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Apa itu menarche?',	'Menarche adalah menstruasi pertama remaja perempuan dalam bahasa ilmiah.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('1a47c32e-eabe-481d-bb63-37150208fc2a',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Apakah menstruasi itu normal?',	'Iya! Ini proses normal dan jadi bagian dari siklus menstruasi remaja dan perempuan. Ini juga tanda kamu tumbuh dewasa dan sehat.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('412ee891-1e23-471e-a570-c7eed85f02dc',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Apa orang lain tahu kalau saya lagi menstruasi?',	'Tidak, kecuali kamu bilang. Saat pertama kali menstruasi, kamu bisa bilang ke ibu, kakak perempuan atau orang dewasa yang kamu percaya. Mereka mungkin bisa menjawab pertanyaan-pertanyaan yang kamu punya.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('c3dd5359-61c7-43b5-911d-2d4a001a4191',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Berapa hari perempuan menstruasi?',	'Biasanya antara 2-7 hari perempuan menstruasi tapi bisa lebih lama lagi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('a0359649-d027-421b-a969-5c942aba102d',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Apa itu siklus menstruasi?',	'Siklus menstruasi dimulai saat hari pertama kamu menstruasi dan selesai saat kamu menstruasi dibulan selanjutnya. Dinamakan siklus karena ini selalu berulang setiap bulan.

Pada masa siklus, hormon (zat kimia dalam tubuh) naik turun dan mengubah bagian tubuh lainnya.

Siklus menstruasi biasanya antara 21-38 hari untuk kebanyakan orang, tapi durasinya berubah dari waktu ke waktu.

Setiap orang berbeda dan memiliki siklus menstruasi yang berbeda-beda itu normal. Di tahun-tahun pertama remaja perempuan mendapatkan menstruasi, siklus mereka cenderung tidak rutin. Bahkan, kadang kamu bisa mens bulan ini tapi tidak bulan depannya.

Mungkin butuh waktu beberapa tahun agar siklus menstruasi-mu menjadi rutin. Membandingkan siklus-mu dengan orang lain atau mencari tahu apa yang disebut ''siklus normal'' bisa membuatmu merasa ada yang salah. Berbeda itu biasa!

Oky bisa membantu melacak menstruasimu untuk melihat mana yang normal BAGIMU. Sehingga, jika ada hal yang tidak biasa kamu bisa bertanya ke orang tua, guru, dokter, bidan atau perawat.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('c3fd5590-36f1-4fbd-868b-02de1d5b7f84',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Apa yang terjadi saat siklus menstruasi?',	'Siklus menstruasi dimulai dengan menstruasi-mu yang mungkin lamanya antara 2-7 hari.

Saat awal siklus menstruasi, sebuah telur di ovari kamu matang dan selaput dinding rahim-mu menebal. Saat telur siap dibuahi, ia akan berenang keluar dari ovarium (indung telur) lalu berjalan melalui saluran bernama tuba falopi ke arah rahim.

Jika telur tidak dibuahi, selaput dinding rahim yang tebal tidak diperlukan karena tidak ada perkembangan bayi sehingga ia harus dipaksa keluar melalui vagina. Inilah yang dialami perempuan saat menstruasi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('540e585a-28af-49bb-ae7e-255c2679beb7',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Apa itu menstruasi/ haid?',	'Menstruasi adalah fungsi alami tubuh yang membuat perempuan bisa hamil dan memiliki bayi. Saat menstruasi, sel-sel selaput dinding rahim keluar dari tubuh melalui vagina. Menstruasi itu normal dan sehat bagi perempuan!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('0ee3b556-53f5-45fc-a09e-161a18bb3f58',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Kapan perempuan pertama kali menstruasi? Pada usia berapa berhenti menstruasi?',	'Remaja perempuan biasanya mulai menstruasi di usia 9-15 tahun, 2 tahun setelah buah dada mulai berkembang. Rata-rata perempuan menstruasi awal usia 12-13 tahun, tapi paling cepat mulai usia 8 dan terakhir usia 16 tahun.

Perempuan biasanya berhenti menstruasi usia 45-55 tahun.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('074c29fa-73f6-49a1-b620-caea73f57a84',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Apa itu masa subur?',	'Masa subur adalah waktu saat tubuh sedang mengeluarkan telur yang sudah matang ke dalam rahim. Pada masa ini, perempuan mempunyai risiko mengalami kehamilan lebih tinggi dari hari biasanya jika melakukan hubungan seksual.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('090f8430-eb00-458a-9e3a-60a0f2e5543a',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'37fdd66b-d98a-45a0-ad84-a7ca0fcbedbf',	'Terbuat dari apa darah menstruasi itu?',	'Darah menstruasi terdiri dari darah, sel-sel jaringan yang menebal di dinding rahim (untuk menyiapkan kemungkinan hamil).',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('7e6a00ec-ce46-49b2-abf5-ae867a180071',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'c13240f8-8a2e-4c92-a290-48dfd5823caf',	'Apa artinya kalau saya tidak menstruasi bulan ini?',	'Remaja perempuan bisa tidak menstruasi selama sebulan atau beberapa bulan dan ini wajar saja.

Hal-hal yang mempengaruhi menstruasimu: 
- stres
- obat-obatan 
- pemakaian alat pencegah kehamilan
- pola makan, terutama jika itu membuatmu sangat kurus
- olahraga berlebihan
- sedang berpergian

Jika perempuan berhubungan seks setelah ia menstruasi, tidak menstruasi bisa jadi tanda kalau ia hamil.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('1fe9d59f-590c-456c-9c6d-c2e5c7249eb6',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'37fdd66b-d98a-45a0-ad84-a7ca0fcbedbf',	'Warna darah menstruasi saya berubah - kadang itu warnanya gelap dan kadang lebih terang, apa itu normal?',	'Warna darah menstruasi yang berubah-ubah itu normal saja! Contohnya, warna itu bisa berubah karena terkena udara. Warna yang berbeda tidak selalu ada kaitannya dengan kesehatan.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('7c530bdb-b324-4a8b-9a0a-9766fb2ce069',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'003ff911-9f1a-4a43-8f0b-53f1fb4926dd',	'Mereka bilang sebaiknya tidak mandi saat menstruasi, apa itu benar?',	'Tidak! Mandi dan membersihkan diri itu sangat penting. Ini akan membuat kamu merasa bersih dan segar serta membantu mencegah infeksi.

Jangan mencoba membersihkan vagina bagian dalam dengan air atau apapun karena itu bisa menyebabkan infeksi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('ef954164-4a24-4674-af59-b95d01bf9020',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Seberapa sering kita perlu mengganti pembalut?',	'Saat menstruasi, gantilah pembalut sesering yang dibutuhkan untuk mencegah kebocoran darah menstruasi. 

Kamu nanti akan tahu berapa lama harus menunggu sebelum mengganti pembalut seiring berjalannya waktu. Secara umum, pembalut sebaiknya diganti 4 - 6 kali sehari atau lebih darah menstruasimu sedang banyak.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('2343f03d-b1d3-48c3-99eb-a4db6ce18bea',	'c0365ddc-ea93-48f7-8ee6-653fff3df031',	'ca2367e7-7852-4b45-9292-180d0ed237be',	'Apa yang terjadi pada remaja laki-laki dan perempuan saat pubertas?',	'Saat pubertas, otakmu mengirimkan pesan kepada bagian tubuh yang berbeda untuk mulai memproduksi hormon yang bisa membuat tubuhmu berkembang. 

Kebanyakan remaja perempuan akan akan mengalami urutan pertumbuhan ini:

- Tumbuhnya payudara, biasanya satu sisi tumbuh duluan. Ini berlangsung selama dua tahun.
- Tumbuhnya bulu-bulu halus pada alat kelamin, biasanya beberapa bulan kemudian.
- Dinding vagina (alat kelamin) menebal dan rahim serta ovarium membesar (perepmpuan tidak sadar akan hal ini).
- Menstruasi dimulai, biasanya 2 - 3 tahun setelah payudara mulai tumbuh. Artinya, ia sudah bisa hamil.
- Jumlah keputihan dari vagina bertambah.
- Tumbuhnya bulu-bulu halus di bawah ketiak dan bau keringat yang menyengat.
- Bertambah tinggi, biasanya secara tiba-tiba.
- Pinggul menjadi lebih lebar.
- Suara mereka menjadi lebih rendah.
- Kulit menjadi berminyak,kadang menyebabkan jerawat.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('faae985a-2d22-4c09-a285-c9608707efd3',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Membuang pembalut bekas sembarangan akan memberikan kutukan kepada dirinya dan keluarganya. Apa ini benar?',	'Ini salah! Penting untuk membungkus pembalut dan tampon bekas pakai dengan kertas atau plastik sebelum membuangnya di tempat sampah karena alasan kebersihan tapi hal ini tidak akan menjadikan kamu mendapatkan hal-hal buruk saat tidak melakukannya.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('8f5913e0-0629-4731-814c-81c1e9194c95',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Kita harus selalu mencuci pembalut bekas pakai agar tidak ada mahluk halus yang mengikuti kita. Apa itu benar?',	'Ini adalah mitos yang bersumber dari budaya atau agama tertentu. Pembalut bekas pakai bisa dibungkus dengan plastik, tisu, atau kertas sebelum dibuang ke tempat sampah. Kamu tidak harus mencuci pembalut bekas sebelum dibuang karena tidak ada penelitian yang menunjukkan dampak buruk akibat tidak mencuci pembalut bekas. 

Sangat penting untuk menjaga kebersihan selama menstruasi, jangan lupa untuk selalu cuci tangan setelah mengganti pembalut.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('a2fa5872-0fc7-4664-a221-b8669aa904ae',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'cdd466a9-9d5d-4abe-89d8-899a528ac56b',	'',	'Jika kamu berusaha menjadi normal, kamu mungkin tidak pernah tahu bahkan kamu bisa menjadi orang yang luar biasa! (Maya Angelou)',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('427ba43d-3c14-4fb5-b8f6-321a2e76dc84',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'd606e88d-2a98-41ac-acce-310bda3a633d',	'Apa saya boleh sekolah kalau lagi menstruasi?',	'Ya! Perempuan yang menstruasi bebas untuk ikut kegiatan apapun seperti biasanya. 

Untuk menyiapkan diri, kamu mungkin ingin memastikan barang-barang penting, seperti celana dalam, pembalut, dan hal-hal lain yang kamu biasanya butuhkan saat menstruasi, pastikan kamu menaruhnya di tas sekolahmu. 

Jika kamu merasa tidak siap menghadapi mentruasimu, silahkan bertanya kepada teman atau orang dewasa (cth. guru, perawat, dokter, pekerja sosial) yang bisa dipercaya.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('e1d32dfe-a43d-4843-acd6-7a4464de61a6',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'11f8a576-288e-4f49-a94d-f863f45fd77a',	'Bagaimana Oky memperkirakan masa subur?',	'Jika kamu punya siklus reguler (kamu selalu menstruasi setiap 26 - 32 hari), Oky menggunakan panjang siklusmu untuk memprediksi masa subur. 

Kamu sebaiknya TIDAK menggunakan prediksi masa subur Oky untuk mencegah kehamilan karena waktu telur matang mungkin berganti tiap bulannya.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('cf3c0658-cc0e-4f22-b902-179e78b2b02e',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'37fdd66b-d98a-45a0-ad84-a7ca0fcbedbf',	'Saya lihat cairan putih di celana dalam, apa ini normal?',	'Iya, itu normal. Cairan putih ini namanya keputihan dan semua perempuan memilikinya.

- Biasanya setelah menstruasi, kamu akan mengalami keputihan selama beberapa hari. Cairan ini biasanya lengket, berwarna putih atau kekuningan.
- Saat telur sedang dikeluarkan oleh ovarium, keputihan berwarna terang, licin dan mirip seperti putih telur.
- Setelah telur dikeluarkan, keputihan menjadi tidak terlalu lengket dan sedikit buram.

Perubahan warna atau jenis keputihan bisa jadi merupakan tanda adanya masalah kesehatan, misalnya:
- kalau keputihan berwarna abu-abu, hijau, kuning atau cokelat
- kalau keputihan sangat banyak, terutama jika ada rasa gatal atau sakit
- keputihan yang lebih banyak atau sedikit dari biasanya atau terlalu menggumpal bentuknya
- ada bau amis atau logam

Kamu sebaiknya konsultasi dengan petugas kesehatan jika mengalami hal-hal di atas.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('fdc3940d-4c94-40c7-a723-8877254f9c63',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'003ff911-9f1a-4a43-8f0b-53f1fb4926dd',	'Apa saya perlu membersihkan bagian dalam vagina saat menstruasi?',	'Tidak! Jangan mencoba membersihkan vagina bagian dalam dengan air atau apapun karena itu bisa menyebabkan infeksi.

Vagina bisa membersihkan dirinya sendiri, membersihkannya dengan air atau cairan lainnya akan mengganggu proses alami dan menyebabkan infeksi. Kamu hanya perlu membersihkan bagian luarnya dengan air.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('c0291282-6e02-4b1e-8b4e-6ec1f8a5ed9e',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Bagaimana cara menggunakan cawan menstruasi?',	'Masukkan cawan ke dalam vaginamu sesuai dengan petunjuk penggunaan, dan biarkan itu berada di dalam vagina. Saat dimasukkan dengan benar, tepi cawan membuat sebuah segel di dinding vagina untuk menghindari kebocoran. Kamu bisa menggunakannya hingga 12 jam atau sampai cawan terasa penuh.

Untuk mengeluarkannya, pegang ujung cawan erat-erat dengan jempol dan jari telunjuk kemudian tarik keluar. 

Buang darah menstruasi, bersihkan cawan dan tepinya dengan air kemudian kamu bisa menggunakannya lagi. 

Setelah selesai menstruasi, bersihkan cawan dengan air mendidih dan keringkan. Saat ingin menggunakannya lagi, pastikan cawan dalam keadaan bersih sebelum menggunakannya.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('82fcfecd-98cb-4048-a745-fc9e347e8bff',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'd7e67c80-4455-450c-8dec-6d87112ab0ee',	'Apa menstruasi itu menyakitkan?',	'Pengalaman menstruasi setiap orang itu berbeda-beda. 

Beberapa remaja perempuan tidak merasa sakit sama sekali, beberapa merasa sedikit sakit, dan beberapa lainnya merasa sakit yang parah sehingga perlu minum obat pereda nyeri. Menstruasi biasanya lebih sakit saat masa remaja.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('a5b05710-c66b-4bde-a494-16063baea2fb',	'd4294393-a910-4041-8d19-d5b71e6b0bfb',	'ce14ff21-7235-4160-b328-8192cada3e30',	'Apa saya perlu olahraga saat menstruasi?',	'Iya, sebaiknya kamu olahraga saat menstruasi!

Olahraga meningkatkan aliran darah dan dapat mengurangi rasa sakit atau kram yang kamu miliki. Mungkin kamu merasa tidak ingin, tapi cobalah untuk ikut serta di kelas olahraga meskipun kamu sedang menstruasi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('7cee47dd-c0b1-47f7-b16b-a8f5b8f6cf11',	'e04b0321-f8c5-4fcf-96cf-f386cda7c42d',	'052fe6a5-7144-4bc2-b887-7ea4ad7a9bd4',	'Apa bedanya gender dan jenis kelamin?',	'Alat kelaminmu itu ditentukan secara biologis sebagai hasil dari kromosom, anatomi, dan hormon-hormon. 

Gender itu dibentuk secara sosial. Gender adalah peran, tanggung jawab dan perilaku yang diharapkan dari seorang laki-laki dan perempuan hanya karena mereka terlahir dengan jenis kelaminnya tersebut. 

Gender bervariasi tergantung dari budaya dan itu berubah dari waktu ke waktu, tapi jenis kelamin itu sama dimana saja. Contohya budaya Bissu di masyarakat Bugis.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('b2adf685-90ab-4475-96d5-0e68f790185f',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Mandi saat menstruasi itu bisa menyebabkan infeksi atau kemandulan.',	'Ini salah! Menjaga kebersihan selama menstruasi adalah penting untuk mencegah kamu dari infeksi. 

Namun, hindari membersihkan vagina bagian dalam dengan air karena itu bisa menyebabkan infeksi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('613dc878-eaec-4f86-bedc-48b007bb81b8',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Saat sedang menstruasi, jangan dekat-dekat dengan laki-laki karena bisa hamil. Ini benar?',	'Ini adalah mitos belaka! Perempuan bisa hamil hanya jika ia melakukan hubungan seks dengan laki-laki. 

Tentu saja, kamu tetap bisa beraktivitas seperti biasa (bermain, belajar, kerja bersama, dll.) dengan teman atau saudara laki-lakimu dan kamu tidak akan hamil karenanya. Kamu juga bisa tunjukkan pada mereka bahwa kamu tetap aktif saat sedang menstruasi!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('74d1b188-cb21-4cc3-90f2-c9dfcdd04989',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'37fdd66b-d98a-45a0-ad84-a7ca0fcbedbf',	'Darah menstruasi saya keluar sedikit, apa itu normal?',	'Darah menstruasi yang keluar itu berbeda-beda antara tiap perempuan dan menstruasi tiap bulan. Jadi penting untuk tahu apa yang disebut normal untukmu. Darah menstruasi yang keluar sedikit mungkin saja normal buatmu.

Menggunakan Oky bisa melacak perubahan menstruasi yang terjadi. Jika darah menstruasimu lebih sedikit dari biasanya, mungkin saja itu disebabkan oleh kehamilan, stres, penyakit, naik atau turunnya berat badan, umur, atau alat kontrasepsi yang mengandung hormon.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('f260d76a-658c-492e-a446-fe633c3a8e92',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Bagaimana membuang pembalut bekas pakai?',	'Bungkus pembalut bekas pakai dengan kertas atau plastik dan masukkan ke dalam tempat sampah. Jika tidak ada kertas atau plastik, masukkan langsung ke dalam tempat sampah.

Jangan membuangnya di dalam lubang jamban karena itu bisa menyebabkan toilet mampet.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('40ec679c-6f30-4ae8-9e2e-c9b605577521',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Apa itu Toxic Shock Syndrome/ TSS? Apa saya bisa kena itu jika menggunakan tampon?',	'Jika tampon berada di dalam vagina pada waktu yang lama, itu bisa menyebabkan penyakit yang disebut toxic shock syndrome/TSS ataugejala keracunan darah. TSS sangat jarang sekali terjadi, namun ini adalah infeksi serius. 

Jika kamu menggunakan tampon dan muntah, demam tinggi, diare, nyeri otot, sakit tenggorokan, pusing, pingsan atau merasa lemah, dan mengalami tipe ruam seperti terbakar matahari, segera keluarkan tampon dan carilah pertolongan medis secepatnya. 

Namun, jangan biarkan fakta ini membuat kamu menjadi takut! Banyak remaja perempuan menggunakan tampon dengan aman tanpa mengalami TSS. 

Sebaiknya, gunakan tampon dengan daya serap rendah sehingga kamu bisa menggantinya setiap 4 - 8 jam atau sesering yang dibutuhkan. Kamu juga bisa menggunakan pembalut dari waktu ke waktu.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('638cafee-1f56-48f4-a1d4-b53ce239118a',	'd4294393-a910-4041-8d19-d5b71e6b0bfb',	'82b8b0a4-2fc3-44a2-8d7b-dab92534e422',	'Makanan apa saja yang sebaiknya TIDAK dimakan saat menstruasi?',	'Kamu bisa makan semua makanan saat menstruasi! Sebaiknya, makan makanan yang sehat termasuk sayuran dan buah. Cobalah untuk menghindari makanan olahan jika kamu bisa.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('23cafa08-dabe-48d7-93c1-20da8f1687f2',	'c0365ddc-ea93-48f7-8ee6-653fff3df031',	'ca2367e7-7852-4b45-9292-180d0ed237be',	'Kapan pubertas itu dimulai?',	'Bagi kebanyakan remaja perempuan, pubertas dimulai antara usia 9 dan 13 tahun, tapi bisa saja mulai lebih awal atau terlambat. 

Setiap orang mengalami pubertas, tapi tiap orang mengalami jenis dan lama perubahan yang berbeda, itu sangat normal! Perubahan pertama yang akan terlihat adalah tumbuhnya payudara (buah dada), kebanyakan satu bagian yang akan tumbuh terlebih dahulu. 

Remaja laki-laki biasanya akan mulai pubertas lebih lambat daripada perempuan, biasanya di usia antara 10 - 14 tahun.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('1cd63251-6cd5-41b4-8003-2118637aeaba',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Perempuan yang lagi menstruasi sebaiknya makan/ tidur/ dan tinggal terpisah dari keluarga. Ini benar?',	'Tidak ada dasar ilmiah yang mendukung kepercayaan ini,namun beberapa kepercayaan punya aturan untuk perempuan yang sedang menstruasi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('b84e3a90-7926-4094-9965-9c3810910344',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'37fdd66b-d98a-45a0-ad84-a7ca0fcbedbf',	'Berapa banyak darah yang keluar selama menstruasi?',	'Darah menstruasi biasanya keluar sebanyak 2-4 sendok makan (30 - 60 ml), tapi bisa juga antara 5-80 ml.

Kebanyakan perempuan keluar banyak darah menstruasi di awal dan menjadi lebih sedikit menjelang selesai menstruasi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('a6b4740d-505b-4d8c-a4dd-4028931435df',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Apa itu tampon?',	'Tampon adalah penyumbat kecil yang terbuat dari katun dan bisa dimasukkan ke dalam vaginamu untuk menyerap darah menstruasi. Beberapa tampon memiliki alat bantu untuk memasukkannya ke dalam vagina. 

Tampon memiliki tali yang di ujungnya sehingga kamu bisa menariknya keluar dengan mudah. ',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('978b30f1-b724-4472-8dac-ff5eb09b5811',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'd7e67c80-4455-450c-8dec-6d87112ab0ee',	'Apakah normal merasa sakit saat menstruasi?',	'Tentu saja! Banyak perempuan merasakan sakit, seperti rasa kram atau sakit punggung bagian bawah saat menstruasi. Beberapa orang mengalami mual, kelelahan, atau pingsan, sakit kepala atau rasa tidak nyaman secara umum. 

Tingkat rasa sakit  tiap orang berbeda dan juga berbeda tiap siklus menstruasi. Hal ini juga berubah seiring berjalannya waktu.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('ddf2a252-58f1-47e6-a1e5-6407f2529ce2',	'd4294393-a910-4041-8d19-d5b71e6b0bfb',	'82b8b0a4-2fc3-44a2-8d7b-dab92534e422',	'Apakah menstruasi menyebabkan anemia atau kekurangan zat besi?',	'Jika kamu tidak makan makanan yang kaya akan zat besi saat menstruasi, kamu mungkin akan mengalami kondisi kekurangan zat besi atau anemia, terutama saat kamu mengeluarkan banyak darah menstruasi. 

Saat kamu merasa lelah, capek atau pusing yang tidak biasa, kamu mungkin mengalami anemia dan sebaiknya segera konsultasi ke petugas kesehatan. Kamu bisa mencegah anemia dengan makan makanan yang mengandung banyak zat besi atau minum tablet penambah zat besi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('2de20595-dc3e-4742-8a6f-3ca903aa2a71',	'c0365ddc-ea93-48f7-8ee6-653fff3df031',	'ca2367e7-7852-4b45-9292-180d0ed237be',	'Apa itu masa remaja?',	'Masa remaja terjadi di usia 10 - 19 tahun, saat orang berkembang dari anak menjadi orang dewasa, secara fisik, emosi dan sosial. 

Selain perubahan fisik, kamu juga akan mengalami perubahan secara emosi dan sosial:

- Perubahan emosi termasuk mengalami perasaan dan mood yang kuat dan cepat berubah, naiknya hasrat dan keinginan seksual. 
- Perubahan sosial seperti mau lebih banyak privasi, mau lebih mandiri dari orang tua, ingin diterima teman sebaya, lebih memilih pertemanan, dan tertarik pada cinta dan hal-hal romantis.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('a6487cd1-bffc-4cc4-b8bf-c5863d558bcb',	'e04b0321-f8c5-4fcf-96cf-f386cda7c42d',	'e38a93b3-32f7-4274-b29e-9a37c6cdcd43',	'Kapan sebaiknya hamil?',	'Kamu perlu merasa siap secara fisik, mental dan keuangan untuk hamil karena hal ini bisa menjadi tantangan besar kalau kamu hamil saat masih remaja. Kebutuhan orang hamil dan bayi itu banyak sehingga perlu disiapkan secara matang. 

Kalau memang dia cinta, maka dia bisa menunggu.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('ebd3bcfb-6172-42c6-a116-43b3c2a15da9',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Kenapa perempuan yang lagi menstruasi sebaiknya tidak melakukan aktivitas keagamaan?',	'Tidak ada alasan medis bagi perempuan untuk tidak melakukan aktivitas keagamaan atau menyiapkan makanan, namun beberapa kepercayaan punya aturan tentang hal ini.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('84171d32-68e9-4776-86be-b86e96814f9a',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'37fdd66b-d98a-45a0-ad84-a7ca0fcbedbf',	'Darah menstruasi saya keluar banyak, apa itu normal?',	'Kamu disebut keluar darah menstruasi banyak saat menggunakan lebih dari 16 pembalut atau tampon dalam satu kali menstruasi. Ini mungkin normal buatmu.

Jika kamu keluar darah menstruasi banyak dan kamu kuatir, tanyakan itu kepada petugas kesehatan.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('f596e15a-6529-4c30-93e0-ac3c8a4b3115',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Bagaimana cara menggunakan pembalut?',	'Letakkan pembalut di celana dalammu, jangan masukkan ke dalam vagina. Ganti pembalut setiap 2-6 jam atau lebih sering jika kamu rasa pembalutmu sudah penuh.

Jika menggunakan pembalut kain, bersihkan dulu dengan air dingin kemudian cuci dengan air hangan dan sabun lalu keringkan di bawah sinar matahari atau setrika pembalut kain sebelum menggunakannya lagi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('dfc59f3f-08a7-4a32-8db6-4679e92f6269',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'd7e67c80-4455-450c-8dec-6d87112ab0ee',	'Apa itu Pre Menstrual Syndrome/PMS?',	'Pre Menstrual Syndrome/PMS (gejala menjelang menstruasi) adalah kumpulan gejala fisik maupun emosi yang terjadi seminggu atau dua minggu menjelang menstruasi. 

Contohnya adalah nyeri otot, sakit kepala, rasa lelah, naiknya berat badan, perut terasa kembung, sakit di bagian payudara, munculnya jerawat, dan berubah mood. Tidak semua perempuan mengalami ini dan gejalanya akan berbeda dari waktu ke waktu dalam hidupmu.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('216000d0-61f0-4eff-91f4-dbfe7f414300',	'e04b0321-f8c5-4fcf-96cf-f386cda7c42d',	'e38a93b3-32f7-4274-b29e-9a37c6cdcd43',	'Bagaimana laki-laki bisa membantu perempuan saat menstruasi?',	'Tumbuh dewasa dan menjadi orang yang perhatian berarti belajar untuk mendukung dan menghargai orang di sekitarmu, termasuk perempuan. 

Laki-laki sebaiknya berusaha mengerti kenapa menstruasi bisa pembuat stres, menyakitkan atau memalukan, lalu menunjukkan perhatian dan dukungannya. 

Mereka sebaiknya tidak bercanda atau menggoda perempuan yang sedang menstruasi, tetapi belajar lebih banyak, memberitahu temannya tentang menstruasi, berbicara dengan ibunya, saudara perempuan dan temannya tentang menstruasi jika mereka mau.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('9aa289eb-f397-44bf-9da7-ca3d820aef88',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'6df5b777-0e80-470c-9d11-d12e23ae9154',	'Saya merasa malu saat menstruasi.',	'Menstruasimu bukanlah suatu hal yang memalukan! Menstruasi berarti tubuhmu itu sehat dan kuat. Apakah kamu tahu bahwa di beberapa tempat di dunia, menstruasi dijadikan sebagai sebuah perayaan? 

Jadilah pemimpin di komunitasmu dan membantu teman dan tetanggamu untuk merasa lebih percaya diri saat menstruasi!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('ff5529da-2d75-492d-8394-e33579ae1122',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Tidak boleh minum air es saat menstruasi karena bisa menyumbat peredaran darah menstruasi. Betul begitu?',	'Ini adalah mitos. Tubuh kita memiliki jalur yang berbeda untuk makan/minum dan untuk menstruasi. Minuman ada di jalur pencernaan, sedangkan menstruasi ada di jalur sistem reproduksi. 

Air es tidak akan membuat darah menstruasi menjadi beku karena mereka beda jalur. Oleh karenanya, kamu tetap bisa minum air es saat menstruasi. Namun, pastikan kalau kamu juga makan makanan yang memiliki zat besi tinggi seperti daging merah atau sayuran hijau, ya!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('5e6a3872-d03e-4004-8e6d-114937e6e89d',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'152e5809-9980-41ba-bf66-f0e77fb536cc',	'Saya disuruh untuk tidak membenci menstruasi, tapi ada beberapa hari saya kesal dengan hal itu! Apa saya salah?',	'Apapun yang kamu rasakan itu tidak apa-apa! Kamu tidak perlu merasa malu dengan menstruasimu, tapi kamu tidak harus selalu menyukainya! Kadang hari-hari buruk saat menstruasi itu terjadi. 

Kamu mungkin punya perasaan yang berbeda-beda tentang menstruasimu dan perasaan itu berubah-ubah - ini sangat tidak masalah. 

Jaga dirimu, dan jika kamu merasa tidak nyaman, ceritakan kepada orang yang kamu percaya seperti temanmu. Itu mungkin akan membantu!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('a0b0fc8d-2f6d-42eb-be9b-22ecb8874f44',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'cdd466a9-9d5d-4abe-89d8-899a528ac56b',	'',	'Jika kamu merasa sedih, cobalah menjadi aktif dengan berolahraga, menari atau melakukan aktivitas fisik - ajaklah temanmu untuk bergabung atau kamu juga bisa menari seperti sendiri seperti tidak ada orang yang sedang melihatmu!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('5a1c815e-5686-478b-9fd6-78982e8bda8e',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'37fdd66b-d98a-45a0-ad84-a7ca0fcbedbf',	'Ada banyak gumpalan pada darah menstruasi saya, apa itu normal?',	'Iya, itu normal saat darah menstruasi punya banyak gumpalan. Darah menstruasi terdiri dari darah dan sel jaringan dari dinding rahim. Karena itulah erdapat banyak gumpalan di dalamnya.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('e88781f7-62f4-465e-a982-690632863c67',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'003ff911-9f1a-4a43-8f0b-53f1fb4926dd',	'Apakah saya harus mandi saat menstruasi?',	'Iya, kamu harus mandi setiap hari seperti biasanya. Jika bisa, bersihkan bagian luar vagina (vulva) dua kali sehari dengan air. Keringkan badan kemudian gunakan pembalut bersih di celana dalam-mu.

Jangan mencoba membersihkan vagina bagian dalam dengan air atau apapun karena itu bisa menyebabkan infeksi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('93a069be-c578-4cf4-84a7-b43115d9114c',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Apa saja jenis-jenis pembalut?',	'Ada dua jenis pembalut: pembalut sekali pakai dan pembalut kain. Bentuk, ukuran serta kapasitas untuk menyerap darah menstruasi setiap pembalut berbeda-beda. Misalnya ada pembalut untuk darah menstruasi yang sedang banyak atau sedikit.

Kamu bisa mencoba beberapa jenis pembalut untuk melihat mana yang paling cocok dengan kebutuhanmu, serta banyak atau sedikitnya darah menstruasimu.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('ed205fda-f1f3-49dc-98a5-619c5b3d5588',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Seberapa sering sebaiknya kita mengganti cawan menstruasi?',	'Cawan menstruasi perlu dikeluarkan dan dibersihkan setiap 12 jam. Kebanyakan cawan bisa digunakan antara 2 - 10 tahun. Kamu harus mengganti cawanmu jika itu rusak, terdapat lubang atau tidak dalam kondisi yang baik.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('699df610-5d70-484d-99f4-70defbb47481',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Apakah menggunakan tampon bisa menghilangkan keperawanan?',	'Tidak, keperawanan hilang hanya jika kamu berhubungan seksual. 

Orang sering berpikir bahwa keperawanan identik dengan selaput dara. Selaput dara adalah sel-sel jaringan elastis yang mengelilingi atau menutup sebagian atau semua lubang vagina. 

Selaput dara perempuan itu berbeda-beda dan itu melebar karena aktivitas fisik, olahraga, penggunaan tampon atau cawan menstruasi, memasukkan jari ke dalam vagina atau berhubungan seksual. 

Ketika kamu memasukkan tampon pertama kalinya, selaput dara kamu kemungkinan besar akan meregang dan membiarkannya masuk ke dalam vagina.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('1d2986ab-49ac-4010-9442-ea86124e56b4',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'd7e67c80-4455-450c-8dec-6d87112ab0ee',	'Apa yang bisa dilakukan untuk mengatasi rasa sakit menstruasi?',	'Ada beberapa cara untuk mengurangi kram: 

- Minum obat pereda rasa nyeri yang bisa dibeli di toko atau warung seperti paracetamol, ibuprofen, naproxen, atau acetaminophen. Ikuti petunjuk penggunaan.
- Olahraga.
- Taruh botol minum berisi air hangat atau koyo di perutmu atau di punggung belakang bagian bawah.
- Mandi air hangat.
- Istirahat.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('6dac7057-0dd0-4cd1-b318-516bddddf75d',	'd4294393-a910-4041-8d19-d5b71e6b0bfb',	'82b8b0a4-2fc3-44a2-8d7b-dab92534e422',	'Apakah makan makanan yang dingin bisa menyebabkan kram?',	'Makan makanan dingin tidak menyebabkan kram saat menstruasi. Kram disebabkan oleh zat kimia, bernama prostaglandin, yang membuat otot di rahim berkontraksi dan mendorong sel dinding rahim keluar melalui vaginamu.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('89a796ec-c6f5-471d-8267-6ca01d86a561',	'e04b0321-f8c5-4fcf-96cf-f386cda7c42d',	'e38a93b3-32f7-4274-b29e-9a37c6cdcd43',	'Kenapa laki-laki tidak menstruasi?',	'Tidak, remaja laki-laki tidak mengalami menstruasi karena alat reproduksi mereka berbeda dari perempuan! 

Tubuh perempuan memproduksi telur, menyiapkan tempat bagi telur yang dibuahi untuk berkembang dan menstruasi. Tubuh laki-laki memproduksi sprema, mengeluarkan cairan semen yang di dalamnya terdapat sperma untuk membuahi telur.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('1300b4ea-bcd2-4e4e-9f11-07c4b5107d2a',	'e04b0321-f8c5-4fcf-96cf-f386cda7c42d',	'e38a93b3-32f7-4274-b29e-9a37c6cdcd43',	'Apa hubungannya antara menstruasi dengan laki-laki?',	'Laki-laki terdampak dari pengalaman perempuan melalui peran mereka sebagai suami, ayah, saudara laki-laki, guru, pemimpin komunitas, pengusaha, pekerja dan pembuat kebijakan.

Menstruasi bisa membuat stres dan memalukan bagi beberapa remaja perempuan. Ketika laki-laki  lebih pengertian dan berusaha untuk membantu, itu membuat pengalaman menstruasi yang menyenangkan bagi perempuan.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('1c81dcb4-aec5-4709-ab5f-c84468a3dc02',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'455f68ae-98f1-480a-8f88-48ab6988cbef',	'Saya takut mengalami menstruasi pertama saya!',	'Menunggu menstruasi pertamamu bisa jadi sangat menakutkan dan menyenangkan secara bersamaan, tapi semuanya akan baik-baik saja dan kamu tidak perlu merasa takut! 

Kamu mungkin merasa kaget atau takut saat melihat darah pertama kali di celana dalammu, tapi ini sangat normal dan alami. 

Untuk mempersiapkan dirimu, bicaralah dengan remaja perempuan lainnya atau orang dewasa yang kamu percayai seperti ibu, saudara perempuan yang lebih tua, tante, nenek, teman perempuan atau perempuan yang lebih tua di komunitasmu dan ajak mereka diskusi tentang menstruasi. 

Saat menstruasi, kami harap kamu merasa bangga karena kamu sedang tumbuh dan menjadi perempuan dewasa. Ayo belajar lebih banyak untuk mengatur menstruasimu tiap bulan!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('68f2537d-e2ba-4ed5-9e24-d3016be4e481',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Kenapa banyak sekali mitos tentang menstruasi?',	'Menstruasi dianggap sebuah misteri sebelum ilmu pengetahuan dapat menjelaskannya. Jadi, banyak sekali ide dan kepercayaan yang dibuat untuk menjelaskan proses menstruasi di masyarakat dan budaya yang kuno. 

Banyak ide dan kepercayaan yang sudah dibuktikan salah melalui ilmu pengetahuan, tapi mereka masih diikuti sampai sekarang. 

Kita menyebut ide-ide ini sebagai mitos menstruasi atau tabu. Banyak mitos yang yang menyarankan bahwa menstruasi adalah penyakit atau kutukan sehingga muncul pemikiran kalau tubuh perempuan itu tercemar saat menstruasi. 

Kepercayaan-kepercayaan ini menyebabkan diskriminasi kepada perempuan pada saat itu, dapat menurunkan rasa kepercayaan diri dan terbatasnya kesempatan untuk tumbuh. 

Bicaralah dengan guru dan temanmu untuk emrencanakan bagaimana kamu bisa membantu untuk menghilangkan mitos-mitos ini!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('db765ada-f7f2-4865-b15a-b409ca22c2ac',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Katanya kalau melompat, berlari, berenang, jatuh atau mengangkat beban berat bisa berpengaruh pada menstruasi saya. Itu benar?',	'Alasan ini tidak berdasarkan ilmu pengetahuan. Melompat, berlari, berenang, jatuh atau mengangkat beban berat tidak akan mempengaruhimu. Aktivitas ini tidak akan menyebabkan kamu memiliki darah menstruasi yang atau meningkatkan rasa sakit. 

Sebaliknya, olahraga dapat membantu meningkatkan aliran darah dan mungkin membantu meredakan rasa sakit dan kram.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('115070d5-44b5-4596-844f-27c0f822cec9',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Minum minuman bersoda akan menghambat darah menstruasi kita. Benar?',	'Ini adalah mitos. Tubuh kita memiliki jalur yang berbeda untuk makan/minum dan untuk menstruasi. Minuman ada di jalur pencernaan, sedangkan menstruasi ada di jalur sistem reproduksi. 

Soda tidak akan membuat darah menstruasi menjadi beku karena mereka beda jalur. Oleh karenanya, kamu tetap bisa minum air es saat menstruasi. Namun, pastikan kalau kamu juga makan makanan yang memiliki zat besi tinggi seperti daging merah atau sayuran hijau, ya!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('1f090ebd-cc74-4aac-be9a-a2b3fc006edb',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'cdd466a9-9d5d-4abe-89d8-899a528ac56b',	'',	'Rayakan kekuatan unikmu! Kamu pantas mendapatkan apapun yang kamu harapkan!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('17a029f1-db4a-4ee7-a334-5acbcdb98b03',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'cdd466a9-9d5d-4abe-89d8-899a528ac56b',	'',	'Menjadi cantik artinya menjadi dirimu sendiri. Kamu itu cantik!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('bcef8d84-3972-4138-8731-5c523f2a78a3',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'003ff911-9f1a-4a43-8f0b-53f1fb4926dd',	'Bagaimana menjaga kebersihan saat menstruasi?',	'Mendapatkan menstruasi pada waktu yang tidak terduga bisa membuat kita merasa kotor, tapi perlu diingat bahwa ini adalah proses alami.

Cara menjaga kebersihan itu mudah:

- Bersihkan bagian luar vagina (dan paha atas jika terkena darah) dengan air bersih sekali atau dua kali sehari jika bisa.
- Bersihkan baju yang terkena darah menstruasi dengan air dingin dan sabun. 
- Ganti pembalut atau tampon segera ketika itu sudah penuh untuk mencegah kebocoran (tampon harus diganti setiap 4-8 jam).',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('7e1a884e-ba6c-4b30-adfb-b8867cb18763',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Bagaimana cara menggunakan tampon?',	'Pilihlah tipe tampon sesuai dengan banyak atau sedikitnya darah menstruasimu. Sebaiknya gunakan tampon yang bisa bertahan beberapa jam.

Bersihkan tanganmu kemudian masukkan tampon ke dalam vagina dengan menggunakan alat bantu atau jarimu, tergantung dari jenis tampon yang kamu punya. 

Setelah 4 - 8 jam, ganti tamponmu dengan cara menarik talinya pelan-pelan. Bungkus tampon dengan kertas/ tisu lalu buang di tempat sampah - jangan membuangnya di dalam lubang jamban atau toilet. 

Jangan gunakan tampon lebih dari 8 jam. Kamu bisa menggunakan tampon saat tidur dengan cara memakainya sebelum tidur dan mengganti secepatnya saat bangun tidur.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('a4937abf-07db-47c8-8b52-c56c194654e3',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'd7e67c80-4455-450c-8dec-6d87112ab0ee',	'Apa penyebab kram menstruasi?',	'Kram disebabkan oleh zat-zat kimia bernama prostaglandin, yang diproduksi oleh tubuh untuk membuat otot-otot di rahim berkontraksi. 

Otot yang berkontraksi mendorong sel-sel selaput dinding rahim keluar dari rahim melalui vagina saat menstruasi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('ad8fae28-18b6-436d-87f0-09c64a74224d',	'd4294393-a910-4041-8d19-d5b71e6b0bfb',	'82b8b0a4-2fc3-44a2-8d7b-dab92534e422',	'Apakah makan makanan tertentu bisa mengubah bau tubuh atau darah menstruasi?',	'Tidak ada makanan spesifik yang bisa mengubah bau tubuh atau darah menstruasimu. Kamu bisa makan apapun yang kamu mau saat menstruasi! Jika mungkin, sebaiknya makan makanan yang mengandung zat besi dan kalsium.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('cf6a911f-f8a2-42ae-b782-1ff577505c90',	'c0365ddc-ea93-48f7-8ee6-653fff3df031',	'ca2367e7-7852-4b45-9292-180d0ed237be',	'Apa itu pubertas?',	'Pubertas adalah waktu saat tubuhmu berubah dari anak menjadi dewasa. Kamu juga akan mulai tumbuh secara emosional dan sosial. 

Selama pubertas, kamu menjadi matang secara seksual dan bisa mengalami kehamilan (untuk perempuan), dan membuat seseorang menjadi hamil (untuk laki-laki), jika kamu melakukan hubungan seksual.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('fedff6c2-e5f6-4f75-8da0-a566284482ee',	'e04b0321-f8c5-4fcf-96cf-f386cda7c42d',	'e38a93b3-32f7-4274-b29e-9a37c6cdcd43',	'Kapan sebaiknya menikah?',	'Kamu perlu merasa siap secara fisik, mental dan keuangan untuk menikah karena pernikahan bukanlah hal yang mudah dijalani apalagi saat kamu masih remaja. Kalau memang dia cinta, maka dia bisa menunggu. 

Di Indonesia, orang baru boleh menikah setelah usia 19 tahun.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('9d002f72-7ca0-4611-8888-3bd0715ac98d',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Apakah menstruasi berarti seorang remaja perempuan sudah siap untuk menikah?',	'Ini salah! Meskipun kamu sudah menstruasi, tubuhmu masih terus tumbuh dan berkembang. Menikah itu sebaiknya kamu sudah siap secara fisik, mental dan keuangan. Di Indonesia, setidaknya kamu harus berusia 19 tahun untuk menikah.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('04b65718-5ba0-4f04-98e6-5962505450cf',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Ada yang bilang kalau perempuan yang sedang menstruasi sebaiknya tidak berada di dekat bau yang menyengat seperti kutek. Apa alasannya?',	'Tidak ada bukti ilmiah tentang hal ini sehingga tidak ada alasan yang jelas kenapa perempuan yang sedang menstruasi tidak boleh dekat dengan bau yang menyengat.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('0291c7fc-60db-4748-b3cd-950098deab1b',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'cdd466a9-9d5d-4abe-89d8-899a528ac56b',	'',	'Percayalah pada dirimu sendiri dan kamu akan menjadi orang yang tidak bisa dihentikan!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('c2282301-f184-4fa2-8832-2c6555574210',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'c736230d-c240-4ea3-a716-2aa670247d5c',	'Apa saran kecantikan saat menstruasi?',	'Saran kecantikan yang terbaik adalah tetap sehat! Tidurlah dengan cukup, minum air putih yang banyak, makan makanan bergizi dan tetap aktif dengan berolahraga! Dan juga menjadi dirimu sendiri! Jadilah dirimu yang uni karena kamu cantik apa adanya (meskipun mungkin ada hari-hari dimana kamu merasa tidak demikian)!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('53c8ffd5-52b2-4cfb-ae7c-4d64b11144cb',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Apa yang sebaiknya saya gunakan untuk menampung darah menstruasi?',	'Ada berbagai cara untuk menampung darah menstruasimu.

Contohnya: pembalut sekali pakai, pembalut kain, tampon, cawan menstruasi, dan celana dalam menstruasi. 

Cari tahu mana saja yang bisa kamu dapatkan di daerahmu. Kamu bisa mencoba beberapa cara untuk melihat mana yang paling cocok untukmu!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('ca71a2ec-cc38-4213-b7b9-aafefd00aff8',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Apa itu cawan menstruasi?',	'Sebuah cawan menstruasi (menstrual cup) adalah sebuah cawan yang fleksibel, berbentuk seperti lonceng yang fungsinya mengumpulkan darah menstruasi.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('ed1b44d3-4a20-4f43-938a-4a5213f4f56c',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Perempuan yang sedang menstruasi itu tidak bersih, kotor, sakit atau bahkan dikutuk. Apa itu benar?',	'Ini salah! Pemikiran ini  bukan berlandaskan ilmu pengetahuan. 

Menstruasi itu alami dibutuhkan oleh perempuan yang ingin hamil dan punya anak. Darah menstruasi terbuat dari campuran darah dan sel jaringan yang tidak berbahaya. 

Mitos ini sering digunakan sebagai alasan untuk menghentikan keterlibatan perempuan dari kegaitan sosial, pekerjaan, sekolah atau keagamaan.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('e37d0315-6c86-4438-80ff-ac98cf2d652f',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Saat menstruasi, sebaiknya kita tidak boleh keramas. Apa ini betul?',	'Salah! Hingga saat ini, tidak ada penelitian yang mengatakan bahwa pori-pori kepala perempuan membesar saat menstruasi. Sebaiknya, menjaga kebersihan itu penting. Jadi kamu bisa tetap mandi dan keramas seperti hari-hari biasanya.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('23afde3a-8381-47dd-8bfe-a8766bec79d7',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'cdd466a9-9d5d-4abe-89d8-899a528ac56b',	'',	'Untuk memuji diri sendiri, pujilah remaja perempuan lainnya - itu rasanya akan menyenangkan!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('f348864b-11ee-4caf-8b6c-6d168c2d8014',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Apa itu pembalut?',	'Pembalut adalah bantalan yang terbuat dari bahan yang mudah menyerap cairan  untuk menyerap darah menstruasi. Pembalut sekali pakai digunakan satu kali kemudian dibuang. Pembalut kain adalah pembalut yang bisa dicuci, dikeringkan dan digunakan berkali-kali.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('e1dc3beb-effc-416c-a38d-1098cebff52f',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'946011f2-3581-457a-a7ad-9415d76cf3eb',	'Seberapa sering kita perlu mengganti tampon?',	'Kamu perlu mengganti tampon tiap 4 - 8 jam sekali, tergantung banyaknya darah menstruasimu. 

Tampon yang dibiarkan terlalu lama di dalam vagina dapat menimbulkan masalah kesehatan seperti toxic shock syndrome/TSS (gejala keracunan darah). Namun, jika digunakan dengan benar, tampon tidak menimbulkan masalah kesehatan.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('feb718f3-29ca-461b-b018-78e90ed1ed64',	'd4294393-a910-4041-8d19-d5b71e6b0bfb',	'82b8b0a4-2fc3-44a2-8d7b-dab92534e422',	'Perlu makan apa saja saat menstruasi?',	'Kamu bisa makan semua jenis makanan seperti biasanya. Sebaiknya, makan makanan yang mengandung zat besi untuk menggantikan zat besi yang hilang selama menstruasi, seperti daging sapi, kacang merah, sayur hijau. 

Makan buah dan makanan yang mengandung kalsium tinggi bisa meredakan beberapa gejala menstruasi. Jangan lupa minum air putih yang banyak!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('f35a3711-223d-4d14-a660-840cefd739ab',	'c0365ddc-ea93-48f7-8ee6-653fff3df031',	'ca2367e7-7852-4b45-9292-180d0ed237be',	'Apa bedanya antara pubertas dan masa remaja?',	'Pubertas adalah perubahan di tubuh, sedangkan masa remaja termasuk SEMUA perubahan yang terjadi saat anak tumbuh menjadi orang dewasa.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('ffc7d775-e7fe-43cd-8007-8035e126e3d1',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'6df5b777-0e80-470c-9d11-d12e23ae9154',	'Saya malu bertanya atau diskusi tentang menstruasi dengan orang lain',	'Merasa malu itu wajar dialami setiap orang dan menstruasi bisa jadi topik yang memalukan. 

Oky mau bilang kalau menstruasi adalah hal yang normal dan kamu tidak perlu malu tentang ini. Semakin sering bicara tentang menstruasi, kamu akan semakin merasa tidak malu.

Namun, jika kamu tidak terlalu ingin bicara tentang menstruasi, kamu tidak harus!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('a9068dbe-6099-4fda-b6f1-84e2a12fa751',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Kalau sedang menstruasi, ada banyak mahluk halus yang mengikuti perempuan. Apa itu benar?',	'Ini adalah mitos yang berasal dari budaya tertentu. Tidak ada bukti ilmiah yang mendukung hal ini. Oleh karenanya, tetaplah aktif seperti biasanya meskipun kamu sedang menstruasi. Selama kamu menggunakan pembalut/ tampon, kamu bebas beraktivitas!',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('678e2ddb-1438-4893-a398-cdcec0188d0f',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'c736230d-c240-4ea3-a716-2aa670247d5c',	'Baju apa yang perlu saya pakai saat menstruasi?',	'Pakaian berwarna gelap, warna yang membuat tenang, warna berani, apapun yang bisa membuat kamu nyaman! Menggunakan pakaian yang cukup longgar mungkin bisa membuat kamu lebih nyaman tapi gunakan apapun yang kamu suka.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('d3945f99-04a4-428f-82f4-c1a59110bdac',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'c736230d-c240-4ea3-a716-2aa670247d5c',	'Bagaimana cara tetap modis saat menstruasi?',	'Kamu bisa menggunakan apapun saat sedang menstruasi. Saran fashion terbaik adalah: Jadilah dirimu sendiri! Merasa nyaman, senang dan percaya dirilah pada pakaian yang kamu kenakan.

Ingat bahwa kamu tidak harus selalu keren dan trendy, ada banyak kualitas diri perempuan yang bisa menginspirasimu.',	'1',	'id',	'2019-12-11 16:00:37.146709'),
('d68d7bcc-3a18-4498-9cef-b64ffbf28080',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'98598ebe-1dd3-4cc5-8d21-c3ea338bcf5b',	'Сарын тэмдэг хэр удаан ирдэг вэ?',	'Сарын тэмдэг нь ихэвчлэн 2-7 хоног ирдэг ч үүнээс удаан байх тохиолдол ч бий.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('dee74b37-3b96-4689-bfae-492235d5a8e7',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'98598ebe-1dd3-4cc5-8d21-c3ea338bcf5b',	'Анхны сарын тэмдэг хэдэн насанд ирж, хэдэн насанд ирэхээ больдог вэ?',	'Охидын сарын тэмдэг ихэвчлэн хөх ургаж эхэлснээс 2 жилийн дараа буюу 9-15 настайд нь ирдэг. Сарын тэмдэг анх ирэх дундаж нас нь 12-13 нас байдаг бол зарим охидод 8 настайд нь аль эсвэл 15-16 настайд нь ирэх тохиолдол ч байдаг.

Эмэгтэйчүүдийн сарын тэмдэг ихэвчлэн 45-55 насны хооронд үзэгдэхээ больдог.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('55a470f5-56d1-43ca-a417-1d971efad519',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'98598ebe-1dd3-4cc5-8d21-c3ea338bcf5b',	'Сарын тэмдгийн мөчлөг гэж юу вэ?',	'Сарын тэмдгийн мөчлөг нь сарын тэмдэг ирсэн эхний өдрөөс эхлэн дараагийн сарын тэмдэг ирэх хүртэлх хоногийн тоо юм. Энэ нь байнга давтагддаг учир мөчлөг гэж нэрлэсэн.

Мөчлөгийн үеэр даавар ихэсч, буурдаг нь биед бусад өөрчлөлт гарахад нөлөөлдөг.
 
Сарын тэмдгийн мөчлөг ихэвчлэн 21-38 хоног байдаг ч зарим охид, эмэгтэйчүүдийн хувьд мөчлөгийн урт нь сарын тэмдэг ирэх бүрт өөр өөр байдаг эсвэл аажимдаа өөрчлөгдөж байдаг. 
Хүн бүрийн биеийн онцлог өөр учир мөчлөгийн хугацаа тогтворгүй байх нь хэвийн зүйл юм. Охидод сарын тэмдэг анх ирсний дараах хугацаанд мөчлөг нь ихэнхдээ тогтворгүй байдаг. Сарын тэмдэг нэг сард ирээд дараагийн сард ирэхгүй байх, аль эсвэл хэдхэн долоо хоногийн зайтай ирэх тохиолдол ч байдаг.

Охидын сарын тэмдгийн мөчлөг ихэвчлэн хэдэн жилийн дараа тогтворждог. Өөрийнхөө мөчлөгийг бусдынхтай харьцуулах, аль эсвэл "хэвийн" гэж тооцогддог мөчлөгтэй харьцуулбал   чамд ямар нэгэн асуудал байгаа юм шиг санагдаж магадгүй ч, ихэнхдээ  ямар ч асуудалгүй байдаг.
ОКИ-г ашиглах нь ЧИНИЙ хувьд юу хэвийн бэ гэдгийг харуулахад тусална. Хэрвээ чиний хувьд ямар нэгэн хэвийн бус юм ажиглагдвал өөрийнхөө итгэдэг том хүнд ярих, аль эсвэл эмчид хандах хэрэгтэй юм.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('015c0cc0-e5c9-4b22-9b1b-0fca8dd194f1',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'98598ebe-1dd3-4cc5-8d21-c3ea338bcf5b',	'Сарын тэмдгийн мөчлөгийн үед юу тохиолддог вэ?',	'Сарын тэмдэг ирсэн үед чиний мөчлөг эхлэх бөгөөд сарын тэмдэг ихэвчлэн 2-7 хоног үргэлжилдэг. 
Мөчлөгийн эхэн үед өндгөвчин дотор өндгөн эс боловсорч эхлэх бөгөөд умайн хана цусаар дүүрч зузаарна.  
Өндгөн эс бүрэн боловсорсны дараа өндгөвчнөөс гадагшлан үр дамжуулах хоолойгоор дамжин умай руу ордог. Үүнийг овуляци буюу өндгөн эс гадагшлах үйл явц гэдэг.
Хэрэв үр тогтоогүй бол умайн доторх хана ховхорч, цусны хамт үтрээгээр дамжин гадагшлах ба үүнийг бид сарын тэмдэг гэдэг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('0af6559b-d0d5-4ab6-a019-bc54c1cbf360',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'98598ebe-1dd3-4cc5-8d21-c3ea338bcf5b',	'Менархе гэж юу гэсэн үг вэ?',	'"Менархе" гэдэг нь охидын анхны сарын тэмдгийг илэрхийлсэн шинжлэх ухааны хэллэг юм.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('2d6c80aa-4ffc-472a-97ae-cfc0255dc70e',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'98598ebe-1dd3-4cc5-8d21-c3ea338bcf5b',	'Сарын тэмдэг нь хэвийн зүйл үү?',	'Тийм ээ! Энэ нь охид, эмэгтэйчүүдийн бие махбодын хэвийн үйл явц юм. Сарын тэмдэг ирж байна гэдэг нь эрүүл байна гэсэн үг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('ffdced0b-4bb8-45f8-92dc-7b558071659f',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'98598ebe-1dd3-4cc5-8d21-c3ea338bcf5b',	'Яагаад охидод сарын тэмдэг ирдэг вэ?',	'Сарын тэмдэг нь нөхөн үржихүйн тогтолцооны нэг хэсэг юм. Нөхөн үржихүйн тогтолцоо нь хүмүүс хүүхэдтэй болоход оролцдог биеийн эрхтнүүдээс бүрддэг.
Сар бүр умайн доторх хана үр тогтсон өндгөн эсийг хүлээн авахад бэлдэн цусаар дүүрч зузаардаг. Хэрэв өндгөн эс эр бэлгийн эстэй нийлж үр тогтвол умайн хананд бэхлэгдэж, үр хөврөл өсч хүүхэд болно. Хэрэв үр тогтоогүй бол умайн доторх хана ховхорч, цусны хамт үтрээгээр дамжин гадагшлах ба үүнийг бид сарын тэмдэг гэдэг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('70cdf633-e965-47db-9c5b-ac5466f2bd2f',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'98598ebe-1dd3-4cc5-8d21-c3ea338bcf5b',	'Сарын тэмдэг гэж юу вэ?',	'Сарын тэмдэг нь эмэгтэй хүн жирэмсэлж, хүүхэд төрүүлэх боломжтойг илтгэх биологийн үйл явц юм. Сарын тэмдгийн үеэр цус умай буюу савнаас гарч, үтрээгээр дамжин биеэс гадагшилдаг. Сарын тэмдэг нь хэвийн бөгөөд эрүүл зүйл юм!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('98010615-20fb-46f8-8192-98c2d843fd91',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'98598ebe-1dd3-4cc5-8d21-c3ea338bcf5b',	'Бусад хүмүүс сарын тэмдэг ирснийг мэдэх боломжтой юу?',	'Чи өөрөө л хэлээгүй бол мэдэх боломжгүй. Хамгийн анхны сарын тэмдэг чинь ирэхэд ээж, эгч эсвэл өөр хэн нэгэн дотны хүндээ хэлж, тусламж авч, мэдэхгүй зүйлсээ асууж болох юм.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('a2665f1b-8ac1-43c1-ae48-557acb7588cb',	'76ee9988-9d7d-460d-b662-ed76fa4fcaad',	'd5de51f5-3a61-49b7-9d99-9615687457a4',	'Сарын тэмдгийн үеэрээ юу идэхгүй байвал дээр вэ?',	'Сарын тэмдгийн үед ямар ч хүнс хэрэглэж болно! Харин жимс, жимсгэнэ болон ногоо түлхүү идэж, эрүүл хооллох хэрэгтэй. Түүнчлэн хэт боловсруулсан хүнс их хэмжээгээр идэхгүй байх нь зүйтэй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('ae4d53cd-8a7d-411c-8111-a18cb7ad7998',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'2c37bd19-1a36-41e6-916d-e764a2a522cf',	'Хэрвээ миний сарын тэмдэг ирэхгүй саатвал энэ нь юу гэсэн үг вэ?',	'Заримдаа ямар ч шалтгаангүйгээр сарын тэмдэг саатах тохиолдол байдаг. Энэ нь сарын тэмдэг ирсэн эхний хэдэн жилд түгээмэл тохиолддог.
Сарын тэмдгийн мөчлөг алдагдах зарим шалтгаанууд:
• Стресс
• Эмчилгээ
• Жирэмслэлтээс хамгаалах эм, бэлдмэлүүд
• Хоолны дэглэм, ялангуяа жин хаях дэглэм 
• Хэтэрхий их дасгал хөдөлгөөн 
• Аялах

Хэрэв охид хамгаалалтгүй бэлгийн харьцаанд орсон бол сарын тэмдэг саатах нь жирэмсэн болсны дохио байж болзошгүй!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('f3c168c0-2055-4748-8546-8495438134f9',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'9393c775-ce2b-4235-8e38-89f767990230',	'Охид сарын тэмдгийн үеэр хэр их цус гардаг вэ?',	'Охид ихэвчлэн 2-4 цайны халбага буюу 30-60 мл цус гадагшлуулдаг. Гэхдээ энэ нь 5-80мл-ийн хооронд хэлбэлзэж болно.
Ихэнх охид, эмэгтэйчүүдийн сарын тэмдэг зарим өдрүүдэд их хэмжээгээр, зарим өдрүүдэд бага хэмжээгээр гадагшилдаг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('75d43b95-cdce-416b-90e2-abb8f905c0a8',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Сарын тэмдгийн аяганцар гэж юу вэ?',	'Сарын тэмдгийн аяганцар гэдэг нь хонхон хэлбэртэй зөөлөн сав бөгөөд сарын тэмдгийг цуглуулах зориулалттай.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('aabdb3dc-41d8-4007-8c54-a2e532419b8b',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'bbc60b32-563e-427e-939e-59b5db95ab65',	'Ямар шалтгаанаар базлалт үүсдэг вэ?',	'Биед боловсрогдож, умайн булчинг агшаадаг простагландин гэх бодисоос шалтгаалж гэдэс савны орчимд базалж өвддөг.  Сарын тэмдгийн үед савны булчин агшиж, цус болон эд эсийг савнаас үтрээ рүү шахдаг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('224e22ba-940c-4a3c-a78c-501159860b5a',	'76ee9988-9d7d-460d-b662-ed76fa4fcaad',	'd5de51f5-3a61-49b7-9d99-9615687457a4',	'Хүйтэн хоол идэх нь гэдэс базлахад хүргэдэг үү?',	'Хүйтэн хоол идэх нь гэдэс базлуулдаггүй.  Умайн булчинг агшаадаг простагландин гэх бодисоос шалтгаалж сав базалдаг.  Сарын тэмдгийн үед умайн булчин агшиж, цус болон эд эсийг савнаас үтрээ рүү шахдаг. Энэ нь огтоос хүйтэн хоолноос болдоггүй!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('b9e0998c-7f77-4644-bf9e-c6c22e47febe',	'685ff343-22bc-41a0-8f22-b997eb270115',	'8c90e37d-30f7-499a-8caf-dbd9ffb43e48',	'Бэлгийн бойжилт, өсвөр насны өөрчлөлт хоёрын ялгаа юу вэ?',	'Бэлгийн бойжилт гэдэг нь бие махбодид гарч буй өөрчлөлт бол, өсвөр насны өөрчлөлт нь хүүхдээс насанд хүрэх үйл явцад гардаг тухайн хүний бие, сэтгэл зүй, нийгэмшихүйн талаас гарах өөрчлөлт юм.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('dd06b309-53fb-424b-930b-acc8bfaf3a3a',	'f1116392-57ca-4a55-9b57-43cc302d4c23',	'aef52a43-5565-4a6a-bc4a-81da6e8019b5',	'Хэрхэн хүүхэд бий болдог вэ?',	'Эмэгтэй хүний умай дахь өндгөн эс, эрэгтэй хүний эр бэлгийн эстэй нэгдэж үр тогтсоноор хүүхэд үүсдэг.

Бэлгийн харьцааны үеэр эрэгтэй хүн үрийн шингэнээ эмэгтэй хүний үтрээнд оруулдаг бөгөөд үрийн шингэнд эр бэлгийн эсүүд агуулагддаг. Эр бэлгийн эс нь үтрээ, умайгаар дамжин, фаллопийн хоолой руу (өндгөвчийг умай руу холбодог хоолой) нэвтэрдэг.

Хэрэв тэнд өндгөн эс боловсорсон байвал ихэвчлэн үр тогтдог. Үр тогтсон өндөг нь умай руу орж, хананд нь бэхлэгдэж аажмаар хүүхэд бүрэлдэн тогтоно.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('694489e8-02d6-445e-9b16-7df3c44216d9',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'61ad01ca-43d2-4dd6-9a1d-1ccda9ca36ee',	'Зарим улс оронд яагаад охидыг сарын тэмдэг ирсэн үедээ шашны арга хэмжээнд оролцож, хоол хийж болохгүй гэдэг вэ?',	'Сарын тэмдгийн үеэр шашны үйл ажиллагаанд оролцох, хоол хүнс бэлтгэхэд ямар нэгэн эрүүл мэндийн шалтгаан байхгүй  ч зарим шашинд сарын тэмдгийн үеэр сахих ёстой журам байдаг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('c907e7ea-08ef-4bb4-9595-2ac5408a4b00',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'f0a67513-423f-4544-8d9d-e01dea4a9cfd',	'',	'Чи өөртөө итгэж чадах юм бол хэн ч чамайг зогсоож чадахгүй!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('51f9f811-ce3c-404b-96a8-1ff81d8f68f5',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'9393c775-ce2b-4235-8e38-89f767990230',	'Миний сарын тэмдэг маш их хэмжээгээр ирэх юм, энэ зүгээр үү?',	'Та хэрэв нэг удаагийн сарын тэмдгийн үед 16 ширхэг ариун цэврийн хэрэглэл, тампон хэрэглэсэн бол сарын тэмдэг их хэмжээтэй байна гэж үзнэ. Энэ нь өөрийн чинь хувьд хэвийн байж болох юм. Хэрэв сарын тэмдэг их хэмжээтэй байна гэж үзвэл эмчид хандаарай.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('1cef454c-e6d7-4de8-b1e4-14b7aa1b6dbd',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'220e4050-4683-478e-8897-b3497d27d537',	'Сарын тэмдэг ирсэн үед усанд орж болох уу?',	'Тиймээ. Ердийн үе шигээ өдөр бүр усанд орох хэрэгтэй. Боломжтой бол бэлэг эрхтнээ өдөрт 2 удаа усаар угаагаарай.  Биеэ хатаагаад, цэвэр даавуун материал эсвэл зориулалтын ариун цэврийн хэрэглэлийг дотуур өмдөндөө хийгээрэй. Хэзээ ч үтрээнийхээ дотор талыг ус болон бусад зүйлээр бүү угаагаарай. Учир нь энэ нь халдвар авах шалтгаан болж мэдэх юм.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('a72abbcf-b702-42da-9edc-0823922d0740',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Хэрэглэсэн ариун цэврийн хэрэглэлээ хэрхэн хаях вэ?',	'Хэрэглэсэн ариун цэврийн хэрэглэлээ цаасанд ороож хогийн саванд хаяна! Хэрэв ороох цаас байхгүй бол хуйлаад хогийн саванд хийнэ. Ил задгай хаяж болохгүй. Ариун цэврийн хэрэглэлээ татуургатай жорлонд хаявал шугам бөглөрөх аюултай!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('8f6a18b5-6b2d-42df-a0f8-5414c940f4b2',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Ариун цэврийн хэрэглэл эсвэл даавуугаа хэрхэн ашиглах вэ?',	'Ариун цэврийн хэрэглэл, эсвэл даавуугаа дотуур өмдөндөө наана. Ийм төрлийн ариун цэврийн хэрэглэлийг үтрээний дотор оруулж огт болохгүй. Ариун цэврийн хэрэглэл, даавуун шингээвчийг 2-6 цаг тутамд, хэрэв шаардлагатай гэж үзвэл, түүнээс олон удаа солих хэрэгтэй. Хэрэв дахин ашигладаг даавуун шингээвч хэрэглэж байгаа бол, эхлээд хүйтэн усаар угааж, дараа нь халуун усаар зөөлөн савангаар савандаж угаагаад, наранд хатаан, индүүдээрэй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('1044673c-58e4-4e74-9d16-bef29796ab75',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Хэр ойрхон хугацаанд тампоноо солих шаардлагатай вэ?',	'Сарын тэмдгийн хэмжээнээс шалтгаалан 4-8 цаг тутамд тампоныг сольж байх шаардлагатай. Тампоныг үтрээнд хэт удаан байлгавал хордлогын шок үүсэх магадлалтай.  Гэвч зөв хэрэглэвэл тампон эрүүл мэндийн ямар ч асуудал үүсгэхгүй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('bd25157e-8b51-4c2b-8f4e-72e7516a43df',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'bbc60b32-563e-427e-939e-59b5db95ab65',	'Сарын тэмдгийн өвдөлтөнд санаа зовох шаардлагатай юу?',	'Базлах нь сарын тэмдгийн үеэр тохиолддог ердийн үзэгдэл боловч базлалт хүчтэй өвдөлт өгч, сургууль, ажилдаа явахад төвөгтэй болбол, эмч, эрүүл мэндийн ажилтанд хандаарай. Тэд үзээд өвдөлтийг намдаах аргуудыг зааж өгөх, эсвэл зарим тохиолдолд жирэмслэлтээс хамгаалах дааврын бэлдмэл хэрэглэхийг зөвлөж магадгүй. Дааврын бэлдмэл нь эм, наалт, суулгац, болон гормоны ерөндөг зэрэг олон хэлбэртэй байдаг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('f2fbf076-8b5d-4fd8-b27e-d691329033b2',	'76ee9988-9d7d-460d-b662-ed76fa4fcaad',	'd5de51f5-3a61-49b7-9d99-9615687457a4',	'Сарын тэмдгээс болж цус багадалттай болж төмрийн дутагдалд орох уу?',	'Сарын тэмдгийн үеэр алдагдсан төмрөө нөхөхөд хангалттай хоол хүнс идэхгүй бол төмөр дутлаас үүдэлтэй цус багадалт үүсч мэднэ. Ялангуяа сарын тэмдэг их хэмжээтэй ирдэг бол. Хэрэв хэвийн бусаар ядарч, сульдаж, толгой эргэж байвал цус багадалттай болсон байх магадлалтай тул эмчид үзүүлээрэй. Төмрийн агууламж ихтэй хоол хүнс идэж, эсвэл эмч зөвлөвөл төмрийн бэлдмэл уух нь цус багадалтаас сэргийлнэ.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('6d290715-3bd5-4169-857c-5a15846e91da',	'685ff343-22bc-41a0-8f22-b997eb270115',	'8c90e37d-30f7-499a-8caf-dbd9ffb43e48',	'Өсвөр нас гэж юу вэ?',	'Өсвөр нас нь бие бялдар, сэтгэл хөдлөл болон нийгэмшлийн хувьд хүүхдээс бие гүйцсэн хүн болох үе буюу 10-аас 19 насыг хэлдэг.
Зөвхөн бие бялдрын өөрчлөлт гэлгүй, сэтгэл хөдлөл болон нийгмийн хувьд ч гэсэн хөгждөг.

• Сэтгэл хөдлөлийн өөрчлөлт гэдэгт хүчтэй бөгөөд түргэн хувьсах сэтгэл санааны байдал, бэлгийн хүсэл, тэмүүлэл зэрэг орно.
• Нийгэмшлийн өөрчлөлтөд, ганцаараа байх хүсэл, эцэг эхээс бие даасан байдалтай байх эрмэлзэл,  цагийг үе тэнгийн нөхөдтэйгээ хамт өнгөрүүлэхийг хүсэх, нөхөрлөлийг илүү үнэлдэг болох, хайр сэтгэл, романтик сэтгэлгээг илүү сонирхох зэрэг орно!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('dee22299-74db-4101-9ece-7cc7ab90f885',	'f1116392-57ca-4a55-9b57-43cc302d4c23',	'32317d84-d06d-4b8a-8195-8e9cacad3f50',	'Үр тогтох өдрүүд гэж юу вэ?',	'Үр тогтох өдрүүд нь энэ үеэр бэлгийн харьцаанд орвол жирэмслэх магадлал хамгийн өндөртэй өдрүүд юм.

Энэ нь чиний өндгөвчнөөс өндгөн эс ялгарах өдрүүд юм. Ихэвчлэн сарын тэмдэг ирэхээд 14 хоногийн өмнө өндгөн эс ялгардаг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('6ad24bee-63e7-41bd-b434-4b954e17eddc',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'2c37bd19-1a36-41e6-916d-e764a2a522cf',	'Миний мөчлөг тогтворгүй байдаг нь асуудал уу?',	'Мөчлөг алдагдах нь хэвийн зүйл бөгөөд сарын тэмдгийн эхний жилүүдэд ихэвчлэн тохиолддог. Бага зэрэг тогворгүй байдал нь хэвийн үзэгдэл бөгөөд эрүүл мэндийн асуудал биш юм.
ОКИ-г ашигласнаар өөрийнхөө мөчлөгийг мэдэх боломжтой болно!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('8486d392-fe71-4283-bcce-15eee0e4fe5b',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'"Хордлогын шокийн синдром" гэж юу вэ? Хэрвээ би тампон ашиглавал ийм синдром надад тохиолдох уу?',	'Хэрэв тампоныг үтрээндээ удаавал үүнээс үүдэн хордлогын шок үүсч болно. Хордлогын шокийн синдром нь ховор тохиолддог боловч маш аюултай халдвар юм. Хэрэв тампон хэрэглэж байхдаа бөөлжих, өндөр халуурах, суулгах, булчин болон хоолой өвдөж, толгой эргэн, ухаан балартах, бие сулрах, мөн наранд түлэгдсэн мэт загатнах зэрэг шинж тэмдэг илэрвэл даруй тампоныг биенээсээ гаргаж, эмнэлгийн тусламж авах хэрэгтэй.  
Гэвч үүнээс айх хэрэггүй, учир нь ихэнх охид эмэгтэйчүүдэд тампоныг хордлогын шоконд оролгүй хэрэглэж чаддаг. Үүнээс сэргийлэхийн тулд аль болох шингээх чанар багатай тампон авч, 4-8 цаг тутамд, шаардлагатай бол түүнээс ч ойрхон хугацаанд тампоноо сольж байх хэрэгтэй. Мөн ариун цэврийн хэрэглэлийг ээлжинд нь сэлгэн хэрэглэж байгаарай.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('33dce2ca-cc22-4f84-973d-42317c5f78f9',	'685ff343-22bc-41a0-8f22-b997eb270115',	'8c90e37d-30f7-499a-8caf-dbd9ffb43e48',	'Бэлгийн бойжилт гэж юу вэ?',	'Бэлгийн бойжилт гэдэг нь чиний бие махбод хүүхдээс нас бие гүйцсэн хүний бие бялдарт шилжин өөрчлөгдөх үе юм. Сэтгэл хөдлөл болон нийгэмшлийн хувьд өсөн хөгжиж эхэлнэ. Бэлгийн бойжилтын үед бэлгийн хөгжил идэвхтэй явагдаж, бэлгийн харьцаанд орсон тохиолдолд (хэрэв та охин бол) жирэмслэх чадвартай болох ба (хэрэв та эрэгтэй бол) жирэмслүүлэх чадвартай болно.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('01d0867a-fc3d-4046-b37f-a14a2a525ecd',	'f1116392-57ca-4a55-9b57-43cc302d4c23',	'1bdc9ba4-adfa-4100-965a-935b8e415e05',	'Сарын тэмдэгийн мөчлөгт хамгаалалтгүй бэлгийн хавьталд орсон ч жирэмслэхгүй байх бололцоотой "аюулгүй өдрүүд" гэж байдаг уу?',	'"Аюулгүй өдрүүд" гэдгийн гол  бэрхшээл нь тэр "жирэмсэлдэггүй аюулгүй өдрүүд" нь чухам яг хэзээ байдгийг мэдэхэд туйлын хэцүү байдагт л юм. Мөн бэлгийн замын халдварт өвчин, ХДХВ-ийн халдварын хувьд ч тэр, халдвар авах боломжгүй өдрүүд гэж байдаггүй. Бэлгэвчгүй бэлгийн хавьталд орвол сарын тэмдгийн үед ч, дууссан дор нь ч жирэмслэх эрсдэлтэй. Үүний зэрэгцээ бэлгийн замын халдвар ч авах боломжтой. Тэр байтугай сарын тэмдэг огт ирээгүй байсан ч, анхны сарын тэмдгийн үед ч, анх удаа бэлгийн хавьталд орсон ч жирэмслэх боломжтой. Хэрэв жирэмслэхийг хүсэхгүй байвал эрсдэл хийхгүй байх хэрэгтэй, үүний тулд бэлгийн хавьтлын үед жирэмслэлтээс хамгаалах хэрэгслийг заавал хэрэглэж байгаарай. Хэрэв бэлгийн замын халдвар авахгүй гэвэл, бэлгийн хавьталд орох бүртээ бэлгэвч хэрэглээрэй. Ийм олон нөхцөл байдгаас жирэмслэлтээс сэргийлэхийн тулд, "Оки"-д найдах хэрэггүй, учир нь энэ нь жирэмслэлтээс сэргийлэх зорилгоор хийгдээгүй болно.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('5d472882-0d73-4431-87a2-13d571dff603',	'f7ac5798-0487-4d78-a78b-05ffc8c8750c',	'66604919-756d-4b6c-8a46-ec509e9ebb83',	'Сарын тэмдэг хөвгүүдтэй ямар холбоотой вэ?',	'Хөвгүүд болон эрэгтэйчүүд эмэгтэй хүний сарын тэмдгийнх нь үеэр найз залуу, нөхөр, ах болон найз нөхрийн хувиар сайн хандах хэрэгтэй байдаг.
Сарын тэмдгийн үед зарим охид стресстэх эсвэл ичих байдалтай тулгардаг. Харин эрэгтэй хүн эмэгтэй хүнийг илүү ойлгож, тусалж дэмжсэнээр тэдний сэтгэл санааг өргөж чадах юм.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('76446e7f-f2b0-4894-b089-534e0b04de4a',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'61ad01ca-43d2-4dd6-9a1d-1ccda9ca36ee',	'Яагаад сарын тэмдгийн талаар маш олон буруу ойлголт байдаг вэ?',	'Шинжлэх ухаан танин мэдэж, тайлбарлахаас өмнө сарын тэмдэг бол учир битүүлэг оньсого байсан юм. Иймээс, эрт цагийн нийгэм, соёлд сарын тэмдгийг тайлбарлах олон санаа оноо, ойлголтууд бий болж байжээ. Тэдгээрийн маш олон нь шинжлэх ухаанаар буруу болох нь батлагдсан хэдий ч, зарим нь одоогийн нийгэмд ч үргэлжлэн мөрдөгдөж, зарим шашин тэдгээрийг дэмжсээр байна. Бид эдгээр санааг сарын тэмдгийн тухай буруу ташаа ойлголт гэж үздэг. Сарын тэмдэг бол өвчин, хараал гэж үзэж байсан буруу ташаа ойлголт олон улс оронд өмнө нь байдаг байсан болохоор сарын тэмдэг ирэх үед эмэгтэйчүүдийн бие бохирлогддог гэсэн ташаа ойлголт байдаг байжээ. Ийм ташаа ойлголт нь эмэгтэйчүүдийг ялгаварлан гадуурхах эх үндэс болж, зарим үед эмэгтэйчүүдийн өөрийгөө үнэлэх үнэлэмжийг бууруулж, өсөн хөгжих бололцоог хаадаг байв. Эдгээр буруу ташаа ойлголтыг арилгахад юугаар тусалж болох талаар багш, найз нөхөдтэйгээ ярилцаарай.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('0c247c39-7136-470e-9d83-03b718201af2',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'f0a67513-423f-4544-8d9d-e01dea4a9cfd',	'',	'Үргэлж энгийн байхыг хичээх юм бол чи ямар гайхалтай хүн болохоо олж мэдэхгүй! (Мая Ангелоу)',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('ff6656ea-dd2b-4bb3-9ee0-a90a0d0227ea',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'f0a67513-423f-4544-8d9d-e01dea4a9cfd',	'',	'Сарын тэмдэг нь огт асуудал биш юм!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('88b92f96-594a-4e26-b229-d3fb8d87962c',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'9393c775-ce2b-4235-8e38-89f767990230',	'Сарын тэмдгийн үеэр гадагшилж буй зүйл юунаас бүрддэг вэ?',	'Сарын тэмдгийн гадагшилж буй зүйл нь жирэмслэхэд биеийг бэлдэн савны ханыг бүрхэж байсан цус, салст бүрхүүл болон үтрээнээс гарч буй шингэн зэрэг юм.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('da11e0b3-f19a-4a5a-b19e-b4e5c441abb9',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'220e4050-4683-478e-8897-b3497d27d537',	'Сарын тэмдгийн үеэр үтрээнийхээ дотор хэсгийг угаах нь зөв үү?',	'Үгүй! Хэзээ ч үтрээнийхээ дотор талыг ус, саван, өөр ямар нэгэн бүтээгдэхүүнээр угаахыг бүү оролдоорой.
Үтрээ нь өөрийгөө цэвэрлэдэг бөгөөд гаднаас нь цэвэрлэх гэж оролдвол байгалийн тэнцвэрт орчныг нь алдагдуулж, халдвар авахад эрсдэлийг үүсгэдэг. Иймд зөвхөн гадна талыг нь л усаар угаагаарай.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('ec57b56b-7f09-4c24-8bcd-1ac69ac1cb40',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Тампоныг хэрхэн ашиглах вэ?',	'Сарын тэмдгийн их багаас шалтгаалан жижиг, ердийн эсвэл супер гэх мэт хэмжээтэй тампоноос сонгож авна. Нэлээд хэдэн цаг ашиглаж болохыг сонгосон нь дээр. Гараа савандаж угаасны дараа ямар тампон хэрэглэх гэж байгаагаас хамааран, тампоныг тусгай хэрэгслээр, эсвэл хуруугаараа үтрээндээ түлхэж хийнэ. 4-8 цагийн дараа, уяанаас нь зөөлөн татаж тампоноо гарган хаяна.  Хэрэглэсэн тампоноо ариун цэврийн цаасанд ороож, хогийн саванд хаях ба жорлонд хийж, ус татаж болохгүй. Тампоныг үтрээндээ 8 цагаас илүү удаан байлгаж болохгүй. Шөнөдөө тампонтой хонож болно, гэхдээ яг унтахын өмнө тампоноо хийж, өглөө босонгуутаа солих шаардлагатай.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('705317d0-4027-48ab-8818-0f24ee919ee5',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'bbc60b32-563e-427e-939e-59b5db95ab65',	'Сарын тэмдэг өвдөлттэй байвал ямар арга хэмжээ авах вэ?',	'Базлалтын өвдөлтийг багасгах хэд хэдэн арга бий:
• Жоргүй олгодог Ибупрофен,  Напроксен эсвэл ацетаменафен Тайленол зэрэг өвчин намдаагч эмүүдийг ууж болно. Эмний саван дээрх зааварчилгааг ямагт уншиж байгаарай. 
• Дасгал хөдөлгөөн хийх,
• Халуун устай шилэн бортого эсвэл халаадаг наалтыг гэдсэн дээрээ эсвэл нурууны доод талд тавих, 
• Халуун ваннтай усанд эсвэл шүршүүрт орох,
• Амрах',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('4d021580-85d1-455a-8e46-a9c9e8ff6c0a',	'76ee9988-9d7d-460d-b662-ed76fa4fcaad',	'd5de51f5-3a61-49b7-9d99-9615687457a4',	'Ямар нэгэн хүнс идэх нь миний сарын тэмдгийн үнэрийг өөрчлөх үү?',	'Үгүй,  ямар нэг тодорхой хоол хүнс хэрэглэх нь сарын тэмдгийн үнэр өөрчлөгдөхөд нөлөөлөхгүй.  Сарын тэмдэг ирсэн үед идмээр санагдаж буй хоол хүнсээ саадгүй хэрэглэ! Боломжтой бол төмөр болон кальциар баялаг хоол хүнс идвэл тун сайн.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('93b248e1-caf3-4f40-b4d9-d6cca1bd7e20',	'685ff343-22bc-41a0-8f22-b997eb270115',	'8c90e37d-30f7-499a-8caf-dbd9ffb43e48',	'Хэзээ бэлгийн бойжилт эхэлдэг вэ?',	'Ихэнх охидын бэлгийн бойжилт 9-13 насанд эхэлдэг боловч зарим үед үүнээс арай эрт эсвэл арай орой эхэлж болно. Хүн бүр бэлгийн бойжилтын үеийг дамждаг ч хүн бүрт явц нь өөр өөр байдаг. Охидын хувьд хамгийн түрүүнд анзаарагдах өөрчлөлт бол хөх ургах ба эхний үед өрөөсөн тал нь томрох нь олонтаа ажиглагддаг. Хөвгүүдийн бэлгийн бойжилт охидынхоос ганц хоёр жилийн дараа, иэхэвчлэн 10-14 насанд эхэлдэг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('d3b8d62e-4c01-455c-a431-dd96985b8d5b',	'f1116392-57ca-4a55-9b57-43cc302d4c23',	'32317d84-d06d-4b8a-8195-8e9cacad3f50',	'Оки үр тогтох өдрийг хэрхэн тооцоолдог вэ?',	'Хэрэв сарын тэмдгийн мөчлөг тогтмол бол (өөрөөр хэлбэл, сарын тэмдэг тогтмол 26-32 хоногт ирдэг бол) Оки сарын тэмдгийн  үргэлжлэх хугацаанд тулгуурлан  хэдийд үр тогтох боломжтойг урьдчилан тооцоолж чадна. Энэ өдрүүдэд хамгаалалтгүй секс хийх, үр тогтоох ажилбар хийлгэх тохиолдолд жирэмсэн болох өндөр магадлалтай өдрүүд бөгөөд эдгээр өдрүүд нь мөчлөгийн хугацааны дунд үед ихэвчлэн тохиодог. Эдгээр өдрүүдэд бэлгийн хавьталд орвол бэлгэвч хэрэглэх гэх мэтээр жирэмслэлтээс сэргийлэх хэрэгтэй. Жирэмслэлтээс хамгаалахын тулд үр тогтох өдрүүдийг урьдчилан тодорхойлсон Окигийн үр дүнд найдаж болохгүй, учир нь өндгөн эс боловсрох өдрүүд сар бүр өөр болж өөрчлөгдөж болно.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('780fb548-0303-4615-af46-ff556725e0ef',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'61ad01ca-43d2-4dd6-9a1d-1ccda9ca36ee',	'Үсэрч харайх, гүйх, унах эсвэл хүнд юм өргөх нь сарын тэмдэгт нөлөөлдөг гэж би сонслоо.',	'Энэ ойлголт шинжлэх ухааны үндэсгүй. Сарын тэмдгийн үед үсэрч харайж, гүйх, унах болон хүнд юм өргөхөд ямарч асуудалгүй. Эдгээрээс болж сарын тэмдэг илүү ихээр ирэх, эсвэл өвдөлт өгөх шалтгаан болохгүй.  Харин дасгал хөдөлгөөн хийх нь цусны эргэлтийг нэмэгдүүлж, базлалт, өвдөлтийг багасгахад хэрэг болно.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('4b6748e6-e549-43da-bbb9-5be0ca10d079',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'f0a67513-423f-4544-8d9d-e01dea4a9cfd',	'',	'Үзэсгэлэнтэй байна гэдэг нь өөрийнхөөрөө байна гэсэн үг юм. Чи үнэхээр үзэсгэлэнтэй!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('31598b48-84d3-4b8c-b019-2a5742768eb5',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'9393c775-ce2b-4235-8e38-89f767990230',	'Сарын тэмдэг ирэхдээ маш их нөжтэй, бүлэгнэлтэй байх юм, энэ нь хэвийн үү?',	'Тиймээ, сарын тэмдэг нөжтэй, бүлэгнэлтэй байх нь хэвийн үзэгдэл. Сарын тэмдэг нь гол төлөв цус болон умайн ханыг бүрхэж байсан эд эсээс бүрддэг, зөвхөн цус биш юм. Тиймээс ерөнхийдөө бөөгнөрсөн, бүлэгнэлтэй байдаг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('f7954e5b-ad0f-49b7-b2dc-663db05cca7d',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'220e4050-4683-478e-8897-b3497d27d537',	'Хүмүүс сарын тэмдгийн үеэр усанд орж болохгүй гэж хэлдэг. Энэ үнэн үү?',	'Үгүй! Сарын тэмдгийн үеэр усанд орох нь маш чухал. Энэ нь илүү цэвэрхэн байлгаж, халдвар орохоос сэргийлнэ.
Үтрээнийхээ дотор хэсгийг угаах хэрэггүй. Учир нь энэ нь халдвар орох магадлалыг улам нэмэгдүүлдэг байна.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('1b63deec-eb2c-4af7-9051-0724feb44a0f',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Сарын тэмдгийн аяганцарыг хэрхэн ашиглах вэ?',	'Сарын тэмдгийн аяганцарыг ашиглахын тулд зааврын дагуу үтрээний дотор оруулж, тэнд нь үлдээнэ. Зөв байрлуулсан бол аяганцарын  амсар нь үтрээний хананд наалдан бэхлэгдэж, гадуур гоожихоос хамгаална. Аяганцарыг үтрээнд дээд тал нь 12 цаг байлгаж болно. Үтрээнээс гаргахдаа аяганцарын суурин дахь ишийг эрхий ба долоовор хуруугаараа сайн хавчиж, татаж гаргана. Аяганцарт цугларсан шингэнийг асгасны дараа, аяганцраа болон ирмэгийг нь усаар сайтар угааж, дахин хийх боломжтой.  Сарын тэмдэг дууссаны дараа, аяганцараа буцалсан усаар сайтар угааж ариутган, бүрэн хатаана. Дараагийн сарын тэмдэг ирэх үед аяганцраа ашиглахын өмнө сайн угааж хэрэглэнэ.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('1eb20d00-4f4a-4354-9295-c153e584e95e',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'bbc60b32-563e-427e-939e-59b5db95ab65',	'Сарын тэмдэг өвдөж ирдэг үү?',	'Сарын тэмдэг өвдөлттэй ирэх эсэх нь охид бүрт харилцан адилгүй байхаас гадна сарын тэмдгийн мөчлөгийн үеүүдэд ч ялгаатай байдаг. Зарим охид ямар ч өвдөлтгүй байхад, зарим нь бага зэрэг өвдөлт мэдэрдэг, зарим нь маш их өвдөлттэй байдаг тул өвчин намдаах эм уухаас аргагүй байдалд хүрдэг. Өсвөр насанд сарын тэмдэг өвдөлттэй ирэх нь элбэг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('d0cfde7e-0fbb-43a4-b3c4-19af92594e28',	'76ee9988-9d7d-460d-b662-ed76fa4fcaad',	'd5de51f5-3a61-49b7-9d99-9615687457a4',	'Сарын тэмдгийн үед юу идвэл зохистой вэ?',	'Ердийн үед иддэг бүх л хоол хүнсээ хэрэглэ. Сарын тэмдгийн үед төмөр биеэс алдагддаг тул мах,  ногоон навчтай ногоо зэрэг төмөр илүү агуулсан хоол хүнс идэх нь зүйтэй. Шинэ жимс, жимсгэнэ, кальцийн агууламж ихтэй хоол хүнс нь сарын тэмдгийн өмнөх синдромын зарим нэг шинж тэмдгийг саармагжуулдаг. Мөн ус сайн уух хэрэгтэй!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('2ed3544d-35e2-4ae4-965c-c41ef6cb430f',	'685ff343-22bc-41a0-8f22-b997eb270115',	'8c90e37d-30f7-499a-8caf-dbd9ffb43e48',	'Бэлгийн бойжилтын үеэр охид болон хөвгүүдийн биенд ямар өөрчлөлтүүд гардаг вэ?',	'Бэлгийн бойжилтын үед тархи чинь биеийн янз бүрийн эрхтэнд даавар ялгаруулах мессеж илгээх ба эдгээр гормон нь биеийн өсөлт, хөгжилтөд нөлөөлнө. 
Бие бялдрын хувьд охидын өсөлт дараах дарааллаар явагддаг: 
• Хөх томорно, эхлээд голцуу нэг тал нь түрүүлнэ.  Энэ нь ойролцоогоор 2 жил үргэлжилдэг.
• Үүнээс хэдэн сарын дараагаар умдган дээр үс ургана.  
• Умайн хана зузаарч, умай болон өндгөвч томорно. 
• Хөх ургаж эхэлснээс хойш 2-3 жилийн дараагаар сарын тэмдэг ирж эхэлнэ. Охидын өндгөн эс ялгарч эхэлснээр охид жирэмслэх боломж бүрдэнэ. Үтрээний шингэн ихэсч, сарын тэмдгийн үед өөрчлөгдөнө.  
• Суганд үс ургаж, хөлс өөрчлөгдөж илүү хурц үнэртэй болно  
• Охид өндөр болох ба зарим үед өсөлт гэнэт явагдана
• Гуя зузаарч, өөхөн давхарга нэмэгдэнэ 
• Дуу хоолой аядуу зөөлөн болно
• Арьс нь тослог болж, батга гарна',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('0b9461ed-23a6-4906-aa14-3064298a989a',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'61ad01ca-43d2-4dd6-9a1d-1ccda9ca36ee',	'Сарын тэмдгийн үед усанд орж, угаалга үйлдэх нь халдвар авах эсвэл үргүй болох шалтгаан болдог уу?',	'Энэ бол худал! Сарын тэмдгийн үед ариун цэврийг сахих нь чухал бөгөөд энэ нь халдвар авахаас сэргийлдэг. Гэхдээ үтрээний дотуур угаалга хийхээс зайлсхийх хэрэгтэй ба энэ нь халдварт өртөх магадлалыг нэмэгдүүлнэ.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('d5938c47-72e2-41b6-b082-032d80ffd122',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'f0a67513-423f-4544-8d9d-e01dea4a9cfd',	'',	'Өөрийнхөө ер бусын талыг олж мэд! Чи хүссэн бүхнээ авах эрхтэй!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('d3403152-4e73-47c7-8c64-aaa74a1b7975',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'c5a56a52-b849-454f-928e-78d98f571207',	'Сарын тэмдгийн үед хамгийн хэрэгтэй гоо сайхны зөвөлгөө?',	'Хамгийн хэрэгтэй гоо сайхны зөвлөгөө бол ЭРҮҮЛ байх! Сайн унтаж амарч, ус сайн ууж, тэжээл сайтай хоол идэж, дасгал хөдөлгөөн сайн хийх хэрэгтэй!

Бас өөрийнхөөрөө байх (чи өөрөө дургүй байсан ч хамаагүй), учир нь чи өөрөө өөрийнхөөрөө байхдаа л үзэсгэлэнтэй!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('3953fd12-ce8a-4091-9e8b-3cb17bf30735',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'9393c775-ce2b-4235-8e38-89f767990230',	'Миний сарын тэмдгийн өнгө өөрчлөгдөөд байна, заримдаа бараандуу, зарим үед ягаавтар байх юм. Энэ нь хэвийн үү?',	'Сарын тэмдгийн цусны өнгө өөрчлөгдөх нь хэвийн зүйл.  Жишээлбэл хэр их агаар салхинд гарснаас сарын тэмдгийн өнгө өөрчлөгдөх нь бий. Гэвч энэ нь эрүүл мэндийн асуудал огт биш юм.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('5aa34ce8-4d61-4886-ac67-7a8ce82c45b3',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Сарын тэмдгийн үеэр цусаа шингээхийн тулд ямар бүтээгдэхүүн ашиглах вэ?',	'Сарын тэмдгийн үеэр ашиглаж болох олон бүтээгдэхүүн бий!

Эдгээрт нэг удаагийн ариун цэврийн хэрэглэл, дахин ашиглах даавуун хэрэглэл, тампон, сарын тэмдгийн аяганцар, шингээгч дотуур хувцас зэрэг орно.

Амьдардаг газарт чинь олдоцтой байдаг бүтээгдэхүүнүүдийг сонгож болно. Түүнчлэн өөртөө хамгийн сайн тохирохыг олохын тулд хэд хэдэн бүтээгдэхүүн туршиж үзэхэд илүүдэхгүй!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('9409b17d-4b14-492e-981c-651498fb08e5',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Тампон гэж юу вэ?',	'Тампон гэдэг нь үтрээний дотор таарахуйц хэмжээтэй хийгдсэн, сарын тэмдгийг шингээх зориулалттай  хөвөн  бөмбөлөг. Зарим тампон нь үтрээнд хийхэд туслах зориулалттай хэрэгсэл буюу аппликатортай байдаг.  

Тампон нь төгсгөлдөө утастай учир хялбархан татаж гаргаж болно.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('c0c1d764-59d6-4f61-8f6b-56929ecc52c8',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'db83c1a7-d8aa-451e-b4df-2e7d6cd55cfe',	'Сарын тэмдэг ирэх үеэр би ичдэг.',	'Сарын тэмдэг нь ичихээр зүйл огт биш! Энэ нь чиний бие эрүүл бөгөөд хүчтэй байгаагийн шинж юм. Тэр ч бүү хэл зарим нэг улс оронд сарын тэмдгийн бахархлын баяр болдгийг мэдэх үү?
Өөрийнхөө хүрээлэлд манлайлагч болж найзууд болон танилуудаа ч сарын тэмдгийн асуудлаар өөртөө итгэлтэй байхад нь туслаарай!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('2c9cafe1-48a7-46e6-a9bd-35ba5e0a37bf',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'61ad01ca-43d2-4dd6-9a1d-1ccda9ca36ee',	'Сарын тэмдэг нь ирж буй эмэгтэй бол бохир, өвчтэй, тэр байтугай хараал хүрсэн гэж үнэн үү?',	'Үгүй, огт үгүй! Энэ бол шинжлэх ухааны үндэслэлгүй худал яриа. Сарын тэмдэг нь эмэгтэй хүний хувьд байгалаас заяасан ердийн төдийгүй, жирэмсэлж хүүхэдтэй болоход  зайлшгүй шаардлагатай  зүйл. Сарын тэмдэг болж гарч байгаа зүйл бол ердөө л цус, эд эсийн хор уршиггүй холимог.  Энэ төөрөгдүүлсэн яриа бол сарын тэмдэг нь ирсэн эмэгтэй хүнийг нийгмээс тусгаарлаж, ажил, сургууль болон шашны үйл ажиллагаанд оруулахгүй байхын тулд зохиосон зүйл. Ийм худал төөрөгдүүлсэн яриаг арилгахын тулд юу хийж болох талаар төлөвлөгөөгөө багштайгаа, найз нөхөдтэйгээ ярилцаарай!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('f74ba676-7c66-4b81-8c9b-1357e2e8f1c6',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'1f3217d8-2d75-4fa4-bcfb-ab910ebcd550',	'Сарын тэмдгээ үзэн ядаж болохгүй гэж надад хэлсэн, гэхдээ зарим өдөр үнэхээр дургүй хүрэх юм. Би буруу бодож байна уу?',	'Өөрөө юу ч мэдэрсэн зүгээр, зовох хэрэггүй! Сарын тэмдгээсээ ичих шаардлагагүй, дандаа таатай байх албагүй. Зарим өдөр таагүй байх нь бий. Сар бүр сарын тэмдгийн талаар өөр өөр мэдрэмж төрж болох юм, энэ бол хэвийн хэрэг. Өөрөө өөртөө анхаарч, хэрэв аятайхан байвал сэтгэл санаагаа итгэж болох хэн нэгэнд, магадгүй найздаа хэлж, хуваалцаж болно. Энэ тус болж болно шүү!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('510d9555-9f04-430a-ac16-7345af0ee7c9',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'c5a56a52-b849-454f-928e-78d98f571207',	'Яаж сарын тэмдгийнхээ үед ч гэсэн загварлаг байх вэ?',	'Чи сарын тэмдгийнхээ үеэр хүссэн бүх зүйлсээ өмсч болно! Хамгийн шилдэг загварын зөвлөгөө бол- Өөрийнхөөрөө бай! Өөртөө тухтай болон чамд сайхан мэдрэмж төрүүлдэг хувцсаа өмсөх юм бол чи өөртөө илүү итгэлтэй байх болно!

Заавал дандаа загварлаг байх ёсгүй ба охидуудад түүнээс ч чухал шинж чанарууд байх ёстойг санаарай!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('c45f5a93-794a-42fb-ac93-347ba078835a',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'9393c775-ce2b-4235-8e38-89f767990230',	'Миний сарын тэмдэг маш бага хэмжээтэй байх юм, энэ зүгээр үү?',	'Сарын тэмдгийн хэмжээ хүн бүрт янз бүр, тэр ч байтугай сар бүр өөр өөр хэмжээгээр ирж болно. Иймд өөрийн чинь хувьд  ямар байвал “хэвийн” хэмжээнд байна вэ гэдгийг мэдэж байх нь чухал. Энэ аппликейшнийг ашигласнаар сарын тэмдгийн хэмжээнд ямар нэг өөрчлөлт гарахыг мэдэж болно. Хэрэв өөрийн чинь хувьд "хэвийн" байх хэмжээнээс бага байвал энэ нь жирэмслэлт, стресс, өвчин, жин нэмсэн эсвэл хассан, жирэмслэлтээс хамгаалах дааврын бэлдмэл хэрэглэсэн, эсвэл нас зэргээс шалтгаалсан байж болно.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('5039fec7-b374-4cab-b469-68f8776e55a3',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Ариун цэврийн хэрэглэл гэж юу вэ?',	'Ариун цэврийн хэрэглэл гэдэг нь сарын тэмдгийг шингээх зориулалттай, шингээх чадвар сайтай даавуу эсвэл салфетк юм.  Нэг удаагийн хэрэглэлийг нэг хэрэглээд л хаях зориулалттай. Монголд зарагддаг ариун цэврийн хэрэглэл нь ихэвчлэн нэг удаагийнх байдаг. Дахин хэрэглэж болох хэрэглэл нь угааж, хатаагаад, олон удаа ашиглаж болох хэрэглэл юм.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('ed87460c-745f-4d54-b3d9-3a596485a911',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Сарын тэмдгийн аяганцарыг хэр ойр ойрхон солих хэрэгтэй вэ?',	'Сарын тэмдгийн аяганцарыг 12 цаг тутамд гаргаж, хуримтлагдсан цусыг асгах хэрэгтэй. Ихэнхдээ аяганцрыг 2-10 жил ашиглаж болдог. Хэрэв аяганцар урагдсан, цоорсон эсвэл муудсан бол солих нь зүйтэй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('870315bd-3ca1-4adb-8340-480f3e849198',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'bbc60b32-563e-427e-939e-59b5db95ab65',	'Сарын тэмдгийн өмнөх синдром гэж юу вэ?',	'Сарын тэмдгийн өмнөх синдром гэдэг нь сарын тэмдэг ирэхээс өмнө нэг буюу хоёр долоо хоногийн өмнө эсвэл ирэх үеэр мэдрэгддэг сэтгэл зүйн болон биеийн өөрчлөлтүүд юм. Хамгийн түгээмэл тохиолддог шинж тэмдгүүд нь: ядрах, үл мэдэг хавагнах, жин нэмэгдэх, хөх хөндүүрлэх, батга гарах болон сэтгэл санаа тогтворгүй болох зэрэг юм. Сарын тэмдгийн өмнөх синдром нь хүн бүрт өөр өөрөөр илэрдэг ба шинж тэмдгүүд нь мөчлөгөөс мөчлөгийн хооронд ч өөрчлөгдөж болох юм.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('7b86669e-4d7d-496a-81e6-1ccbac02719a',	'76ee9988-9d7d-460d-b662-ed76fa4fcaad',	'2ef18e3f-671a-4f7a-a76e-34661bb75340',	'Сарын тэмдгийн үед дасгал хийж болох уу?',	'Тэгэлгүй яахав, сарын тэмдгийн үедээ дасгал хийж байх хэрэгтэй. Дасгал хийснээр цусны эргэлт хурдасч, өвдөлт, базлалт багасна. Төвөгтэй байж болох ч, биеийн тамирын хичээлдээ сарын тэмдэг ирсэн үедээ ч орж байхыг хичээгээрэй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('ae3cd254-853e-41aa-b2e4-d8b6a62392d7',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'61ad01ca-43d2-4dd6-9a1d-1ccda9ca36ee',	'Сарын тэмдэг ирэх нь охидыг гэрлэхэд бэлэн болсон гэсэн үг үү?',	'Худлаа. Сарын тэмдэг ирэх нь биед өсөлт хөгжилт явагдаж байгааг илэрхийлж байгаа юм. Түүнчлэн 18 нас хүрэхээс өмнө нөхөрт гарч, хүүхэд төрүүлэх нь охидод өөрийнх нь болон хүүхдийн эрүүл мэндэд сөрөг үр дагавартай.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('7181ae4c-24a2-4dd2-81f2-36b4b0f6729f',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'ed663ba1-1570-49d5-99a8-d4cd203f113a',	'Би анхны сарын тэмдэг ирэхээс айгаад байна.',	'Анхны сарын тэмдгээ хүлээх нь аймаар ч гэсэн догдолмоор байж болно. Гэхдээ бүх зүйл хэвийн байх болохоор огт айх хэрэггүй!

Дотуур өмдөн дээр цус болсон байхыг хараад цочирдож айж магадгүй ч гэсэн энэ нь хэвийн зүйл юм.

Бэлтгэлтэй байхын тулд, ээж, эгч, эмэгтэй найз эсвэл өөрийнхөө  дотны эмэгтэй хүнтэй ярилцаж, зөвлөгөө авч болно.

Анхныхаа сарын тэмдгийг ирэхэд эмэгтэй хүн болж, өсөж хөгжиж байгаагаараа бахархахын зэрэгцээ сар бүр сарын тэмдгийн үеэрх эрүүл ахуйг сахих талаар мэдлэгтэй болно шүү дээ!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('e10c4f35-cf09-4fe4-a01c-908e54124e5f',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'61ad01ca-43d2-4dd6-9a1d-1ccda9ca36ee',	'Хэрэглэсэн ариун цэврийн хэрэглэлийг хаях нь охидод болгон эргэн тойрны хүмүүст муугаар тусдаг.',	'Энэ тийм биш. Хэрэглэсэн ариун цэврийн хэрэгсэл тампоноо сайтар боож, хогийн саванд хийх, бусад хогтой хамт шатаах зэргээр зөв зүйтэй хаях нь чухал ба ямар ч муу муухай уршиг авчрахгүй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('367b5685-dfc5-40f3-a39a-6a993556171f',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'9393c775-ce2b-4235-8e38-89f767990230',	'Заримдаа дотуур өмд цагаан юм болчихсон байх юм, энэ нь хэвийн үзэгдэл үү?',	'Тиймээ, бүх охид эмэгтэйчүүдийн биеэс үтрээний шингэн гадагшилдаг. Тэр нь мөчлөгийн явцад өөрчлөгдөж байдаг. Сарын тэмдэг ирээд дууссаны дараахан бол шингэн бага ялгардаг. Харин хэд хоног өнгөрсний дараагаар шингэн нь арай илүү наалдамхай, цагаан эсвэл шаравтар туяатай болдог. Өндгөн эс боловсорч ялгарах дөхөж, эмэгтэй жирэмслэх боломжтой үед шингэн нь тунгалагдуу өнгөтэй, өндөгний цагаантай адил гулгамтгай болдог. Өндгөн эс ялгарч гадагшилсны дараа шингэн ялгаралт багасч, наалдамхай, бүүдгэрдүү болдог. Хэрэв эмэгтэй жирэмснээс хамгаалах хэрэгсэл хэрэглэвэл, эсвэл жирэмсэлсэн бол, шингэн бас өөрчлөгдөнө.
Үтрээний шингэнд гарах зарим өөрчлөлт эрүүл мэндийн ямар нэг асуудал байгааг харуулах шинж тэмдэг байж мэдэх ба жишээлбэл:
- Шингэний өнгө саарал, ногоон, шар эсвэл хүрэн байвал,  
- Шингэн ихээр гарах, тэр нь загатнуулж, хорсож байвал, 
- Жирийн үеийнхээс илүү шингэвтэр эсвэл илүү өтгөн, овгор товгор, бижрүүтэй бол, 
- Загас эсвэл төмөр шиг эвгүй үнэртэй бол эмчид хандах хэрэгтэй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('8b69429d-ec5b-4800-ba45-828ce01d9aac',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Ямар ямар төрлийн ариун цэврийн хэрэглэлүүд байдаг вэ?',	'Ариун цэврийн хэрэглэл нь нэг удаа хэрэглээд хаядаг эсвэл олон дахин ашиглаж болох гэсэн 2 төрөл бий. Тэдгээр нь сарын тэмдгийн хэмжээнээс хамааран хэмжээ, хэлбэр болон шингээх чадвар нь өөр өөр байдаг. Сарын тэмдгийн үеэр аль өдөр нь ямар хэрэглэл илүү тохирох эсэхийг туршиж үзэх хэрэгтэй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('e881f512-ad00-4956-95de-16d1449c3fe6',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'bbc60b32-563e-427e-939e-59b5db95ab65',	'Сарын тэмдэг өвдөлттэй байх нь хэвийн зүйл үү?',	'Тиймээ, хэвийн зүйл. Олон эмэгтэйчүүд, охид сарын тэмдгийн үеэр базлалт, ар нурууны доод хэсгээр өвдөлт мэдэрдэг. Заримынх нь дотор муухайрч, ядарч эсвэл ухаан балартах, толгой өвдөх болон ерөнхийдөө бие нь эвгүйцэх зэргээр тавгүйтдэг. Өвдөлтийн байдал нь хүн бүрт, мөчлөг бүрт ялгаатай төдийгүй хэсэг хугацааны дараа бас өөрчлөгддөг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('810c4545-d73a-4b81-bf3d-72b8ef03eee2',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'db83c1a7-d8aa-451e-b4df-2e7d6cd55cfe',	'Би сарын тэмдгийн талаар бусадтай ярихаасаа ичдэг.',	'Охид болон эмэгтэйчүүд сарын тэмдэг нь ичмээр ярианы сэдэв гэж боддог нь ховор тохиолдол биш юм.
Оки чамд сарын тэмдэг нь ичихээр зүйл огт биш бөгөөд маш хэвийн зүйл юм гэдгийг ойлгуулах зорилготой. Чи өөрийнхөө итгэдэг хүнд сарын тэмдгийнхээ талаар ярих тусам энэ нь тийм ч ичмээр зүйл биш гэдгийг ойлгох болно.
Тэгээд ч чи сарын тэмдгийнхээ талаар яримааргүй байвал заавал ярих албагүй шүү дээ!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('8b57d3a8-3b4c-4268-b5ae-b9bf3bddbd89',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'61ad01ca-43d2-4dd6-9a1d-1ccda9ca36ee',	'Сарын тэмдгийн үед эмэгтэй хүн хумсны будаг мэтийн хурц үнэрийн орчимд байж болохгүй гэж зарим оронд үздэг. Яагаад тэр вэ?',	'Ингэж үзэх үндэс шинжлэх ухааны хувьд байхгүй. Сарын тэмдгийн үедээ хурц үнэрээс зайлсхийх шалтгаан эмэгтэйчүүд, охидын хувьд байхгүй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('7550db3a-1d2f-489a-b880-278e8249bfb4',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'f0a67513-423f-4544-8d9d-e01dea4a9cfd',	'',	'Хэрвээ чи сэтгэлээр унах юм бол бүжиглэх, дасгал хийх гэх мэт идэвхтэй хөдөлгөөн хийгээд үз - Хамт бүжиглэх найз ол эсвэл хэн ч хараагүй юм шиг ганцаараа бүжиглэ!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('27955e89-ce93-43b5-8f5b-e6a6afbc6e29',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'220e4050-4683-478e-8897-b3497d27d537',	'Сарын тэмдгийн үед хэрхэн ариун цэвэр, эрүүл ахуйг сахих вэ?',	'Сарын тэмдэг бэлтгэлгүй байхад ирэхэд асуудал үүсч болно. Гэхдээ энэ бол энгийн л үзэгдэл гэдгийг санаарай.
Сарын тэмдгийн үеийн ариун цэврийг сахих нь маш энгийн:
• Үтрээнийхээ гадна талыг өдөрт 1-2 удаа, урдаас арагшаа чиглэлтэйгээр угаах. Хэрвээ гуя цус болсон бол угаах.
• Хэрвээ хувцас нь толбо болсон бол хүйтэн усаар савандаж угаагаарай.
• Ариун цэврийн хэрэглэл болон тампоноо хальж, нэвтрэхээс нь өмнө сольж байгаарай. Тампоныг 4-8 цаг тутамд сольж байх хэрэгтэй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('2f7a9ba6-f2c4-499e-ae94-1ca3ed0a2efe',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'f0a67513-423f-4544-8d9d-e01dea4a9cfd',	'',	'Өөрийнхөө сэтгэл санааг өргөхийн тулд өөр хэн нэгний сэтгэл санааг өргөөд үз - энэ их гоё мэдрэмж шүү!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('a126902a-a0ee-4441-9a00-13b7218f5432',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Тампон хэрэглэснээр би онгон биш болох уу?',	'Үгүй ээ. Зөвхөн бэлгийн харьцаанд орж байж онгон байдлаа алдана. Заримдаа хүмүүс онгон хальсыг онгон байдалтай хамаатуулж андуурдаг. Онгон хальс нь сав болон савны амыг тойрсон уян хатан сунадаг эд юм. Охидын онгон хальс хоорондоо адилгүй ба биеийн хүчний ажил  хийх, спортоор хичээллэх, тампон болон сарын тэмдгийн аяганцар хийх, үтрээнд хуруу хийх, бэлгийн харьцаанд орох зэрэгт сунаж хэлбэрээ өөрчилдөг. Тампоныг анх удаа үтрээнд хийхэд онгон хальс тодорхой хэмжээгээр сунадаг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('20038dad-99e4-4fa9-9b04-d81f795ab129',	'f7ac5798-0487-4d78-a78b-05ffc8c8750c',	'1c9f1a48-583e-484d-942b-4f7d23df4e9a',	'Жендэр болон хүйсийн ялгаа юу вэ?',	'Хүйс бол биологиор тодорхойлогддог. Энэ нь өөрийн чинь удмын өгөгдөл, бие махбодын бүтэц, дааврын үйл ажиллагааны үр дүн. Жендэр гэдэг нь нийгмийн тодорхойлолт. Энэ нь эрэгтэй, эмэгтэй болж төрснийх нь хувьд тэднээс нийгмийн зүгээс хүсэн хүлээж буй үүрэг, хариуцлага, зан үйл юм. Жендэр нь янз бүрийн соёл, цаг хугацаанд өөр өөр байдаг бол, хүйс гэдэг нь хаана ч, хэдийд ч өөрчлөгдөхгүй хэвээр байдаг ойлголт.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('c9039ef9-486a-4608-87a8-9329476ce72a',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'09ecc64c-ac60-4f32-be7b-586858ddfeb3',	'Сарын тэмдгийн үеэр сургуульдаа явж болох уу?',	'Тиймээ! Охидууд ямар ч энгийн үйл ажиллагаанд оролцож болно.
Сургууль дээрээ бэлтгэлтэй байхын тулд илүү дотуур өмд болон ариун цэврийн хэрэглэл авч явах нь санаандгүй асуудлаас аварч болно!
Хэрвээ бэлтгэлгүй байхад сарын тэмдэг ирэх юм бол итгэдэг найз нөхөд болон том хүмүүсээс тусламж хүсээрэй!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('5d71f561-7d86-47e2-b0e2-e5e84cb35603',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'f6820683-7931-4d8b-a7e7-08618abc774a',	'Хэдий хугацаанд ариун цэврийн хэрэглэлээ сольж байх ёстой вэ?',	'Сарын тэмдгийн үед ариун цэврийн хэрэглэл дүүрч, нэвтрэхээс сэргийлэхийн тулд зохих хугацаанд нь солих хэрэгтэй. Хэдий хугацаанд солих нь чамд тохиромжтойг чи яваандаа өөрөө мэддэг болно. Ерөнхийдөө, ариун цэврийн хэрэглэлээ өдөрт 4-6 удаа, эсвэл сарын тэмдэг илүү их ирэх үед түүнээс олон удаа сольж байх хэрэгтэй.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('69e48e30-a2f2-4f09-b44f-dadff738f6a3',	'f1116392-57ca-4a55-9b57-43cc302d4c23',	'1bdc9ba4-adfa-4100-965a-935b8e415e05',	'Сарын тэмдгийн үеэр бэлгийн харьцаанд орж болох уу?',	'Тиймээ, сарын тэмдгийн үед бэлгийн хавьталд орж болно. Энэ нь хортой биш. Секс хийх нь зүйтэй юу, үгүй юу гэдгийг тухайн эмэгтэй, түүний хамтрагч нар л  шийдэх асуудал. Зарим хүмүүс эмэгтэйнхээ сарын тэмдгийн үед бэлгийн харьцаанд орохыг таагүй гэж үздэг. Учир нь цус гарахтай холбоотой төвөгтэй асуудлууд тулгардаг. Ээмэгтэйчүүд хамтрагчтайгаа ярилцан өөрсдийн тааллаар сонголтоо хийх эрхтэй. Харин хүсээгүй жирэмслэлт, бэлгийн замын халдвараас сэргийлэхийн тулд байнга бэлгэвч хэрэглэх ёстойгоо санах хэрэгтэй. Сарын тэмдгийн үед хамгаалалтгүйгээр бэлгийн харьцаанд орвол сарын тэмдгийн богино мөчлөгтэй хүнд эсвэл тухайн мөчлөгт өндгөн эс эрт ялгарвал жирэмслэх боломжтой.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('ce125bbf-fc59-4d69-8d6f-f2fa0184a3b9',	'f7ac5798-0487-4d78-a78b-05ffc8c8750c',	'66604919-756d-4b6c-8a46-ec509e9ebb83',	'Яагаад хөвгүүдэд сарын тэмдэг ирдэггүй вэ?',	'Хөвгүүдэд сарын тэмдэг гэж байдаггүй. Эрэгтэй, эмэгтэй хүний бие бялдрын гол ялгаа бол бидний нөхөн үржихүйн эрхтэнд байдаг. Зөвхөн охид, эмэгтэйчүүд л жирэмсэн болж чадна. Охид, эмэгтэйчүүдийн бие өндгөн эс боловсруулдаг, харин эрэгтэй хүн, хөвгүүд эр бэлгийн эс боловсруулж гадагшлуулдаг.',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('bb0b468f-c890-4553-a122-e1400eec0d1e',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'c5a56a52-b849-454f-928e-78d98f571207',	'Сарын тэмдгийн үеэр ямар өнгийн хувцас өмсвөл илүү тохиромжтой вэ?',	'Хар бараан, зөөлөн дулаан өнгийн хувцас... өөрт чинь таалагддаг ямар ч өнгө байж болно! Ихэнх охид сарын тэмдгийн үеэр санаа амар байхын тулд хар бараан  болон сул хувцас өмсдөг ба чи ч гэсэн өөрийнхөө өмсмөөр байгаа хувцсыг өмсөхөд л болно!',	'1',	'mn',	'2019-12-11 16:00:37.146709'),
('41c79374-ba6d-4198-b109-1075deac04b1',	'f7ac5798-0487-4d78-a78b-05ffc8c8750c',	'66604919-756d-4b6c-8a46-ec509e9ebb83',	'Сарын тэмдэг ирсэн үед хөвгүүд охидод хэрхэн тусалж болох вэ?',	'Халамжтай хүн болж өсч хүмүүжнэ гэдэг нь эргэн тойрондоо байгаа хүмүүст, түүний дотор охид, эмэгтэйчүүдийг дэмжиж, хүндэтгэж сурах явдал юм. Сарын тэмдэг яагаад охид эмэгтэйчүүдийг бухимдуулж, эмзэг, зарим үед ичиж зовмоор зүйл болдгийг эрэгтэйчүүд, хөвгүүд ойлгохыг хичээж, халамж анхаарал, дэмжлэг үзүүлж байх нь зүйтэй. Tэд сарын тэмдэг нь ирсэн охидыг  шоолж, тоглоом тохуу хийхгүй байх ёстой төдийгүй, сарын тэмдгийн талаар өөрсдийн болон нөхдийнхөө ойлголт, мэдлэгийг сайжруулж, ээж, эгч, найз нөхөдтэй нь энэ тухай ярьж, дэмжлэг үзүүлж байх хэрэгтэй.',	'1',	'mn',	'2019-12-11 16:00:37.146709');

DROP TABLE IF EXISTS "category";
CREATE TABLE "public"."category" (
    "id" uuid NOT NULL,
    "title" character varying NOT NULL,
    "primary_emoji" character varying NOT NULL,
    "primary_emoji_name" character varying NOT NULL,
    "lang" character varying NOT NULL,
    CONSTRAINT "PK_9c4e4a89e3674fc9f382d733f03" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "category" ("id", "title", "primary_emoji", "primary_emoji_name", "lang") VALUES
('3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'Periods and life',	'🌞',	'life',	'en'),
('700e0378-2c0a-47bb-815b-757bec70d463',	'Menstruation and menstrual cycle',	'🔴',	'periods',	'en'),
('2711c0a5-e829-43c3-a30b-80fdfdc30298',	'Managing menstruation',	'🚺',	'care',	'en'),
('7940acf8-f02c-4763-bd60-14d9f186c8aa',	'Puberty',	'🌷',	'growing',	'en'),
('926f2cd1-74a5-4d2a-860c-96c3e9dca8f0',	'Boys, men and relationships',	'👫',	'boys',	'en'),
('ec4975e6-52d6-4387-8e75-124afc3325cf',	'MITOS DAN PERASAAN',	'👫',	'pria',	'id'),
('d4294393-a910-4041-8d19-d5b71e6b0bfb',	'KESEHATAN',	'💚',	'kesehatan',	'id'),
('e04b0321-f8c5-4fcf-96cf-f386cda7c42d',	'RELASI DAN LAWAN JENIS',	'👪',	'keluarga',	'id'),
('f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'MENSTRUASI DAN SIKLUSNYA',	'🔴',	'menstruasi',	'id'),
('c0365ddc-ea93-48f7-8ee6-653fff3df031',	'Pubertas',	'🌷',	'pertumbuhan',	'id'),
('75a8544d-2716-4a14-97ac-94cbe26b9d64',	'MENGENAL MENSTRUASIMU',	'🚺',	'peduli',	'id'),
('76ee9988-9d7d-460d-b662-ed76fa4fcaad',	'Эрүүл мэнд, хооллолт ба дасгал хөдөлгөөн',	'💚',	'эрүүл мэнд',	'mn'),
('f1116392-57ca-4a55-9b57-43cc302d4c23',	'Жирэмслэлтээс сэргийлэх',	'👪',	'эр бүл',	'mn'),
('1bd57546-b402-49bc-9113-d7acfe0401d1',	'Сарын тэмдэг ба амьдралын хэв маяг',	'🌞',	'амьдрал',	'mn'),
('d70d218f-a63e-480d-9128-3d8ab06a30c0',	'Сарын тэмдэг ба мөчлөг',	'🔴',	'Сарын тэмдэг',	'mn'),
('bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'Сарын тэмдгийн үеийн эрүүл ахуй',	'🚺',	'рчилгаа',	'mn'),
('685ff343-22bc-41a0-8f22-b997eb270115',	'Бэлгийн бойжилт',	'🌷',	'ургах',	'mn'),
('f7ac5798-0487-4d78-a78b-05ffc8c8750c',	'Хөвгүүд болон үерхэл',	'👫',	'хөвгүүд',	'mn'),
('54b24a83-7fa4-4513-9afe-f21ae1eda9c0',	'Health, nutrition and exercise',	'🙈',	'health',	'en'),
('aa6a8cf9-f678-480a-b3ae-7952d3069535',	'data',	'😄',	'smile ',	'en'),
('8048de61-64b9-4c14-b4b7-134982d999e0',	'Family planning',	'👪',	'family',	'en'),
('aa5a3c41-a5fc-47ea-9ece-78ce20fe24b1',	'Alex test',	'😍',	'Cat',	'en'),
('c0707f32-6a90-413e-98f7-0c96826f6b8b',	'Using menstrual cups',	'🍰',	'Cup',	'en'),
('dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'Myths and feelings',	'😓',	'feelings',	'en'),
('ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'Gaya hidup',	'😓',	'perasaan',	'id'),
('8253819f-21e9-4866-8b16-9fbb9ce37c16',	'Мэдрэмжүүд ба буруу ойлголтууд',	'😓',	'мэдрэмж',	'mn');

DROP TABLE IF EXISTS "did_you_know";
CREATE TABLE "public"."did_you_know" (
    "id" uuid NOT NULL,
    "title" character varying NOT NULL,
    "content" character varying NOT NULL,
    "live" boolean NOT NULL,
    "lang" character varying NOT NULL,
    CONSTRAINT "PK_42938503877ef67ceca9060239a" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "did_you_know" ("id", "title", "content", "live", "lang") VALUES
('e858ac64-d9f2-4a29-9cea-3483568ef55c',	'Menstruation and menstrual cycle',	'Only half of ''period blood'' is actually blood! 😮 The rest is made of the natural substances that line your womb and vagina.',	'1',	'en'),
('663009c9-ce30-4e64-b467-153a4a590ca0',	'Health, nutrition and exercise',	'Don''t avoid exercise when you have your period, it can actually help with your cramps!🏃‍♀️',	'1',	'en'),
('644e6de3-610f-443d-b478-0210fa40efdf',	'Menstruation and menstrual cycle',	'The womb prepares a fresh new lining every month in preparation for a fertilised egg. Your period is the old lining coming out! ⤵️',	'1',	'en'),
('300ddd97-4cc7-4e57-b1f2-89a72971dc2c',	'Puberty',	'The first sign of puberty is usually growing breasts, followed by hair on the genitals and armpits, and later, your periods! 😯',	'1',	'en'),
('b41bb1b7-5eb8-4991-b703-a0917dbcf810',	'Managing menstruation',	'Using a tampon does NOT mean you are no longer a virgin.👍 Losing your virginity only happens if you have sex.',	'1',	'en'),
('83a2818d-d8d1-48f7-b30b-33aa78d03ada',	'Health, nutrition and exercise',	'It''s good to eat foods rich in iron like red meat, lentils or leafy green vegetables when you have your period. 🥩🥦',	'1',	'en'),
('8d102a41-21f6-4f79-8198-ae195c6fd536',	'Menstruation and menstrual cycle',	'The days between each period  (menstrual cycle) can be anything between 21 and 31 days - everyone is different! ☺️',	'1',	'en'),
('e290343c-1a6a-4f50-9dd7-db9a7523b666',	'Managing menstruation',	'Period cramps are caused by your uterus contracting to push out the lining built up during your monthly cycle. 😖',	'1',	'en'),
('7da530be-e663-47dc-b015-d993a55ad613',	'Puberty',	'Puberty is the time when you start changing from little girl to young woman.👧👱‍♀️',	'1',	'en'),
('ef67741c-62d2-4145-bdba-c68a4d3eb30a',	'Health, nutrition and exercise',	'Eating cold food doesn''t cause more cramps during your period. But it''s true warm foods can be comforting! 🍚',	'1',	'en'),
('15ef9919-deff-4d5a-9f31-010c7bf52f9e',	'Managing menstruation',	'You don''t need to wash inside your vagina during your period (or ever!) as this could make infections more likely. 🤒',	'1',	'en'),
('e0985101-e1cf-4da5-b677-85632e14fcd5',	'Puberty',	'Weight gain, becoming suddenly taller, or getting oily skin are all signs of puberty arriving. Annoying, but normal! 👍',	'1',	'en'),
('b77e2d2c-891f-4250-9805-b9145b831afb',	'Family planning',	'It is possible to get pregnant when you have your period, for example if you release an egg earlier than usual.📆',	'1',	'en'),
('6517031a-c9fc-430f-b3a4-adb8cfb6312c',	'Family planning',	'There are no such thing as ''safe days'' unless you use a condom to protect you from sexual infections!🙅‍♀️',	'1',	'en'),
('06be9608-a3fa-426a-bc4f-10aaddf9c68f',	'Family planning',	'There is nothing wrong with having sex during your period, as long as both partners are OK with it. 🤝 Just remember to use protection!',	'1',	'en'),
('ab58522c-8b83-4c69-935a-7c042629777b',	'Boys, men and relationships',	'Boys should care about periods because it affects the health and happiness of the girls and women they love. 👫',	'1',	'en'),
('c9d27b8b-f4e9-49b2-921c-6dd6019f4cf9',	'Boys, men and relationships',	'Boys don''t have periods because they don''t have a uterus or produce eggs. 🤔 They produce sperm instead.',	'1',	'en'),
('5ab4f380-877b-4de3-bf1f-d19756ecaee2',	'Boys, men and relationships',	'Boys who want to help girls when they have their period can start by asking questions and listening to girls'' experiences.👂',	'1',	'en'),
('e4363629-6f98-4702-85c9-8ca26354e4cc',	'Myths and feelings',	'There is no scientific reason why girls should live, eat or sleep separately during their periods. 😐',	'1',	'en'),
('6a2116a5-b9eb-4908-aad5-4db068c91df0',	'Periods and life',	'Even though periods are normal and healthy, it''s OK to dislike them 😡.',	'1',	'en'),
('02b3e419-56ce-44c9-af82-02fb95f58eef',	'Periods and life',	'The best beauty advice is to eat a variety of food, drink plenty of water, stay active, and get lots of sleep! 🥕 💦🏃‍♀️😴',	'1',	'en'),
('29db3aee-2dd9-4b85-936b-fb8a868bb236',	'Myths and feelings',	'In many cultures, a girl''s first period is a cause for celebration as she enters womanhood 🎉.',	'1',	'en'),
('14c68d46-58be-4d72-9b08-8b3eb8a080b3',	'Myths and feelings',	'Having your period doesn''t mean you are ready to get married... you should also be emotionally mature before marriage!👏',	'1',	'en'),
('e13c442b-b3ad-46f7-9c5a-155ddf2cf3dc',	'Periods and life',	'Feeling down? Exercise like running, jumping, or dancing can put a smile back on your face.😊',	'1',	'en'),
('e6daffd7-89ae-4928-990c-0a5bcfbbfcd4',	'Menstruasi dan siklusnya',	'Hanya setengah ''darah menstruasi'' adalah darah! 😮 Sisanya adalah sel selaput dinding rahim dan vagina.',	'1',	'id'),
('c42f496e-db3e-4ca9-909d-3ebd9bdda4fd',	'Menstruasi dan siklusnya',	'Siklus menstruasi (jeda hari antara menstruasi yang satu dengan lainnya) biasanya adalah antara 21-31 hari - setiap orang itu berbeda! ☺️',	'1',	'id'),
('d6ca2bb1-19eb-4192-9565-687b11767a7d',	'Pubertas',	'Tanda awal pubertas biasanya tumbuh payudara, diikuti dengan tumbuhnya rambut dan bulu halus di alat kelamin, ketiak, dan terakhir menstruasi! 😯',	'1',	'id'),
('18e6bd75-ff4b-430a-be84-803f8dd6025c',	'Pubertas',	'Pubertas adalah waktunya kamu tumbuh dari anak perempuan menjadi perempuan dewasa.👧👱‍♀️',	'1',	'id'),
('266dfed1-f91b-49a3-b820-da7fa3d28b8f',	'Menstruasi dan siklusnya',	'Setiap bulan, rahim menyiapkan lapisan baru sebagai tempat calon bayi. Menstruasi adalah lapisan dinding rahim yang keluar karena tidak ada telur yang dibuahi⤵️',	'1',	'id'),
('b351dd57-66e6-4303-b383-6a7661f4fe6e',	'Mengenal menstruasimu',	'Menggunakan tampon TIDAK membuat kamu tidak perawan 👍. Kehilangan keperawanan hanya terjadi jika kamu berhubungan seks.',	'1',	'id'),
('c5628e86-ca0f-4ff0-b380-aa2eea4a6eb5',	'Kesehatan',	'Berolahraga saat menstruasi bisa mengurangi sakit akibat kram menstruasi! 🏃‍♀️',	'1',	'id'),
('47075b07-2fdf-45a7-a712-cf0155984f7a',	'Kesehatan',	'Makan makanan yang tinggi zat besi seperti daging merah, lentil atau sayuran hijau sangat baik saat kamu menstruasi. 🥩🥦',	'1',	'id'),
('f44f0d1a-49a5-48db-89d2-a3835b6238f2',	'Kesehatan',	'Makan makanan dingin tidak akan menyebabkan kram menstruasi. Tapi makan makanan hangat bisa membuat kamu nyaman! 🍚',	'1',	'id'),
('96d625fe-bb8b-47bc-8d25-a82784d18ce6',	'Mengenal menstruasimu',	'Kamu tidak perlu membersihkan vaginamu dalam (atau kapanpun!). Karena ini bisa menyebabkan infeksi. 🤒',	'1',	'id'),
('773059fb-0a31-45e0-8af1-156ce6889fe6',	'Mengenal menstruasimu',	'Kram menstruasi disebabkan karena rahim berusaha mengeluarkan sel selaput dinding rahim saat siklus menstruasi. 😖',	'1',	'id'),
('b9de5559-fa36-4683-93d8-1e2e7be12175',	'Pubertas',	'Berat badan naik, bertambah tinggi tiba-tiba, atau kulit jadi berminyak adalah tanda pubertas. Menyebalkan, namun itu normal! 👍',	'1',	'id'),
('e51471c5-e66a-4116-884f-b15255a21e5c',	'Relasi dan lawan jenis',	'Laki-laki harus tahu tentang menstruasi karena itu mempengaruhi kesehatan dan kebahagiaan perempuan yang mereka cintai. 👫',	'1',	'id'),
('efe65cbb-d772-4cab-931f-5140b737a3e7',	'Relasi dan lawan jenis',	'Laki-laki bisa membantu perempuan saat menstruasi dengan bertanya dan mendengarkan pengalaman perempuan. 👂',	'1',	'id'),
('6cddcaa5-a3f6-4aea-8bfb-de3aa02d1662',	'Mitos dan perasaan',	'Mengalami menstruasi tidak berarti kamu sudah siap untuk menikah.. Kamu perlu menjadi dewasa secara emosi juga untuk siap menikah! 👏',	'1',	'id'),
('6274b27b-e830-406b-ba96-b66e9cf9d82f',	'Mitos dan perasaan',	'Tidak ada alasan ilmiah kenapa remaja perempuan harus tinggal, makan atau tidur di tempat terpisah saat menstruasi. 😐',	'1',	'id'),
('4d5add2b-c1b6-4eb2-b46d-5caa19135d5a',	'Relasi dan lawan jenis',	'Laki-laki tidak menstruasi karena mereka tidak punya uterus atau memproduksi telur.😄Mereka produksi sperma.',	'1',	'id'),
('f8457d2b-e709-482d-8de7-e6dad372a2ae',	'Gaya hidup',	'Merasa sedih? Olahraga seperti lari, melompat, atau berjoget dapat mengembalikan senyum di wajahmu. 😊',	'1',	'id'),
('e217f1ba-f504-45e6-adfa-88b78f9f1d4e',	'Mitos dan perasaan',	'Di banyak budaya, remaja perempuan yang baru menstruasi dirayakan karena itu tanda mereka mulai jadi dewasa 🎉.',	'1',	'id'),
('e6fa04e4-9a51-4e71-9abf-fbcf512fb245',	'Gaya hidup',	'Saran kecantikan terbaik adalah makan berbagai jenis makanan, minum air putih yang banyak, tetap aktif dan tidur yang cukup! 💦😴🏃‍♀️🥒🥕',	'1',	'id'),
('48e61493-420a-4456-a2fd-99c9acb98b85',	'Gaya hidup',	'Meskipun menstruasi itu normal dan sehat, tidak apa-apa untuk tidak menyukainya 😡.',	'1',	'id'),
('fe1c6b73-15dd-4170-ba01-e57773f2e6dc',	'Сарын тэмдэг ба мөчлөг',	'Сарын тэмдгийн үед гадагшилдаг  цусны зөвхөн хагас нь л жинхэнэ цус байдаг. 😮 Бусад нь үтрээ, умайн ханыг бүрхсэн эд эсүүд юм.',	'1',	'mn'),
('d39d1029-8e19-4bee-b946-b8850ec55c9f',	'Сарын тэмдгийн эрүүл ахуйг сахих талаар',	'Үтрээнийхээ дотор талыг сарын тэмдгийн үеэр, эсвэл хэзээ ч угааж болохгүй! Учир нь энэ нь халдвар орох магадлалыг ихэсгэдэг.🤒',	'1',	'mn'),
('5e8e8765-bc2c-40dd-a1f4-7d65119327ca',	'Сарын тэмдэг ба мөчлөг',	'Умайн дотор хананы салст бүрхүүл нь үр тогтсон өндгөн эсийг хүлээн авахад бэлдэн сар бүр шинэчлэгдэж байдаг. Үр тогтоогүй бол салст бүрхүүл сарын тэмдэгтэй хамт гадагшилдаг! ⤵️',	'1',	'mn'),
('ef316369-17cb-4cc8-aabc-5da24a04e3c0',	'Эрүүл мэнд, хоол тэжээл ба дасгал хөдөлгөөн',	'Хүйтэн хоол идэх нь сарын тэмдгийн базлалтанд нөлөөлдөггүй. Гэвч халуун хоол идэх нь сайн.🍚',	'1',	'mn'),
('ba36de26-5e04-44c1-9353-64999d2fd511',	'Эрүүл мэнд, хоол тэжээл ба дасгал хөдөлгөөн',	'Сарын тэмдгийн үеэр улаан мах, навчтай ногоо гэх мэтчилэн төмрөөр баялаг хүнс түлхүү хэрэглэх хэрэгтэй!🥩🥦',	'1',	'mn'),
('65fcc6d2-bfc2-460b-9841-5dae0df8c9fc',	'Сарын тэмдэг ба мөчлөг',	'Нэг сарын тэмдгийн мөчлөг нь 21-ээс 31 хоногийн хооронд хэдэн ч хоног үргэлжилж болно. Бүх сарын тэмдгийн мөчлөгүүд өөр өөр байдаг! ☺️',	'1',	'mn'),
('0bb193e0-b3b8-4b8b-aa0a-0a235e377736',	'Бэлгийн бойжилт',	'Бэлгийн бойжилтын хамгийн эхний шинж тэмдэг нь хөх ургах ба түүний дараа бэлэг эрхтний ойролцоо болон суганд үс ургах, тэгээд дараа нь сарын тэмдэг! 😯',	'1',	'mn'),
('49fe4bff-9660-482c-8072-2d6b409d7f3c',	'Сарын тэмдгийн эрүүл ахуйг сахих талаар',	'Умайн хананы салст бүрхүүлийг гадагшлуулахын тулд үүсдэг базлалтыг сарын тэмдгийн базлалт гэдэг.😖',	'1',	'mn'),
('497379bf-71b5-47f9-91f0-6a12e04cc3b4',	'Эрүүл мэнд, хоол тэжээл ба дасгал хөдөлгөөн',	'Сарын тэмдгийн үеэр дасгал хөдөлгөөн хийхээс битгий цааргалаарай! Ялангуяа базлалт ихтэй үедээ дасгал хөдөлгөөн хийх хэрэгтэй.🏃‍♀️',	'1',	'mn'),
('818d0405-95e0-416e-bf62-0d547398a5eb',	'Сарын тэмдгийн эрүүл ахуйг сахих талаар',	'Тампон ашигласнаар онгон байдлаа алдана гэсэн үг биш юм. 👍Бэлгийн харьцаанд орсноор л онгон байдлаа алдах боломжтой.',	'1',	'mn'),
('2cdc57b1-aacd-4502-91c2-5abae88d97f9',	'Бэлгийн бойжилт',	'Жин нэмэх, гэнэт өндөр болох, арьс тослог болох зэрэг нь бүгд бэлгийн бойжилт эхэлж буйн шинж тэмдэг юм. Энэ нь ядаргаатай ч гэлээ хэвийн зүйл юм! 👍',	'1',	'mn'),
('cae6e915-63b0-47ff-bf7b-eee5ab65abd7',	'Гэр бүл төлөвлөлт',	'Сарын тэмдгийн үед жирэмслэх боломжтой. Жишээ нь, өндгөн эс чинь арай эрт гадагшилсан үед ч жирэмслэх магадлалтай. 📆',	'1',	'mn'),
('46106c06-b5ae-42ec-9fd9-7b58bee723b2',	'Гэр бүл төлөвлөлт',	'Бэлгийн харьцааны үеэр бэлгэвч ашиглахгүй бол халдвар авах эрсдэлтэй ба "аюулгүй өдөр" гэх мэт зүйл байхгүй!🙅‍♀️',	'1',	'mn'),
('4c7fbbb0-f54f-4f67-a359-d13135f587b2',	'Гэр бүл төлөвлөлт',	'Сарын тэмдгийн үеэр хамтрагчид хоёул тохиролцсон бол бэлгийн харьцаанд орох ямар ч асуудалгүй. 🤝 Харин хамгаалалт хэрэглэхээ мартваа!',	'1',	'mn'),
('c193d88c-9e56-4665-a750-6d87e959569c',	'Бэлгийн бойжилт',	'Бэлгийн бойжилт нь чамайг жаахан охиноос нас бие гүйцсэн эмэгтэй болох үйл явц юм.👧👱‍♀️',	'1',	'mn'),
('3b359990-702e-4cc3-aa52-4494652e4805',	'Хөвгүүд ба үерхэл',	'Хөвгүүд ч гэсэн сарын тэмдгийн талаар анхаарч байх ёстой. Учир нь энэ нь  тэдний хайртай охид, эмэгтэйчүүдийн эрүүл мэнд, сайн сайханд нөлөөлдөг! 👫',	'1',	'mn'),
('24ef36ab-35ad-4c16-833f-2127f7e8ed8b',	'Хөвгүүд ба үерхэл',	'Хөвгүүдэд умай байхгүй бөгөөд өндгөн эс ялгардаггүй учир сарын тэмдэг ирдэггүй. 🤔 Тэд харин эр бэлгийн эс боловсруулдаг.',	'1',	'mn'),
('e81963fe-fb50-409b-a917-0c9ba95422ab',	'Төөрөгдөл ба мэдрэмж',	'Охид сарын тэмдгийн үеэр гэрийнхнээсээ тусдаа идэж, унтах ёстой гэсэн шинжлэх ухааны үндэслэлтэй шалтгаан байхгүй. 😐',	'1',	'mn'),
('d864eaad-1921-4409-97e8-b1ce0d8a777b',	'Төөрөгдөл ба мэдрэмж',	'Олон соёлд охидын анхны сарын тэмдгийг эмэгтэй хүн болж байна хэмээн тэмдэглэдэг 🎉.',	'1',	'mn'),
('9577d012-cca0-41f9-a5de-2c498b7b1211',	'Төөрөгдөл ба мэдрэмж',	'Сарын тэмдэг ирсэн гэдэг нь чи гэрлэхэд бэлэн болсон гэсэн үг биш юм... Чи гэрлэхийнхээ өмнө сэтгэл зүйн хувьд бэлэн болсон байх ёстой!👏',	'1',	'mn'),
('75ec843a-9553-43cc-8365-e67c02b746e7',	'Хөвгүүд ба үерхэл',	'Сарын тэмдэг нь ирсэн үед найз охиддоо туслахыг хүссэн хөвгүүд тэднээс асуулт асууж, яриаг нь сонсохоос эхэлж болох юм. 👂',	'1',	'mn'),
('fbde738d-7a5c-44d4-af18-8e766db9bb30',	'Сарын тэмдэг ба амьдрал',	'Гоо сайхны хамгийн хэрэгтэй зөвөлгөө бол төрөл бүрийн хүнс ногоо хэрэглэх, хангалттай сайн ус уух, идэвхтэй байх болон сайн унтаж амрах! 🥕 💦🏃‍♀️😴',	'1',	'mn'),
('4b7b670c-b452-46a9-8269-eca67ab4557b',	'Сарын тэмдэг ба амьдрал',	'Хэдийгээр сарын тэмдэг нь хэвийн болон эрүүл байгаагийн шинж байж болох ч чи дургүй байж бас болно😡.',	'1',	'mn'),
('dc6d86bd-689f-4fbe-ae28-071e6516b5d5',	'Сарын тэмдэг ба амьдрал',	'Гунигтай байна уу? Гүйх, үсрэх гэх мэтчилэн дасгал хийх эсвэл бүжиглэх юм бол чи эргээд инээх болно😊',	'1',	'mn');

DROP TABLE IF EXISTS "help_center";
DROP SEQUENCE IF EXISTS help_center_id_seq;
CREATE SEQUENCE help_center_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."help_center" (
    "id" integer DEFAULT nextval('help_center_id_seq') NOT NULL,
    "address" character varying NOT NULL,
    "lang" character varying NOT NULL,
    "title" character varying NOT NULL,
    "caption" character varying NOT NULL,
    "contactOne" character varying NOT NULL,
    "contactTwo" character varying NOT NULL,
    "website" character varying NOT NULL,
    CONSTRAINT "PK_ce5a257ef63f11c5cee7d3798f2" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "notification";
DROP SEQUENCE IF EXISTS notification_id_seq;
CREATE SEQUENCE notification_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."notification" (
    "id" integer DEFAULT nextval('notification_id_seq') NOT NULL,
    "title" character varying NOT NULL,
    "content" character varying NOT NULL,
    "date_sent" character varying NOT NULL,
    "status" character varying NOT NULL,
    "lang" character varying NOT NULL,
    CONSTRAINT "PK_705b6c7cdf9b2c2ff7ac7872cb7" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "oky_user";
CREATE TABLE "public"."oky_user" (
    "id" uuid NOT NULL,
    "date_of_birth" timestamp NOT NULL,
    "gender" character varying NOT NULL,
    "location" character varying NOT NULL,
    "store" json,
    "nameHash" character varying NOT NULL,
    "passwordHash" character varying NOT NULL,
    "memorableQuestion" character varying NOT NULL,
    "memorableAnswer" character varying NOT NULL,
    CONSTRAINT "PK_e04d597903fb977e9510bd38fb8" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "quiz";
CREATE TABLE "public"."quiz" (
    "id" uuid NOT NULL,
    "topic" character varying NOT NULL,
    "question" character varying NOT NULL,
    "option1" character varying NOT NULL,
    "option2" character varying NOT NULL,
    "option3" character varying NOT NULL,
    "right_answer" character varying NOT NULL,
    "wrong_answer_response" character varying NOT NULL,
    "right_answer_response" character varying NOT NULL,
    "live" boolean NOT NULL,
    "lang" character varying NOT NULL,
    "date_created" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT "PK_422d974e7217414e029b3e641d0" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "quiz" ("id", "topic", "question", "option1", "option2", "option3", "right_answer", "wrong_answer_response", "right_answer_response", "live", "lang", "date_created") VALUES
('7a09fe4e-03c0-4671-8b18-81a3b521fcf1',	'Myths and feelings',	'Beliefs around periods are one of the things that cause girls to be discriminated against.'' 😕
',	'True',	'False',	'NA',	'1',	'It was true! Incorrect beliefs around periods can lead to girls being discriminated against. 😲
',	'You''re right! Incorrect beliefs around periods can lead to girls being discriminated against. 😲
',	'0',	'en',	'2019-12-11 15:44:54.651455'),
('7ff802c3-9d6b-4cd2-9386-52b0c129ac35',	'Health, nutrition and exercise',	'Dizziness during your period is not normal.''😵 
',	'True',	'False',	'NA',	'2',	'Not true! Dizziness, weakness and excessive tiredness could be a sign of iron deficiency (anaemia). If you often feel this way, try and see a doctor.👩‍⚕️',	'That''s right! Dizziness, weakness and excessive tiredness could be a sign of iron deficiency (anaemia). If you often feel this way, try and see a doctor.👩‍⚕️',	'0',	'en',	'2019-12-11 15:44:54.651455'),
('aa6efbe1-95f1-42f1-82d0-a0c8c01156c4',	'Menstruation and menstrual cycle',	'If your period doesn''t come, you are definitely pregnant.'' 🤔',	'True',	'False',	'NA',	'2',	'The answer was False! Stress, extreme tiredness 😫 or poor nutrition can also make you miss your period.',	'You''re right! Stress, extreme tiredness 😫, or poor nutrition can also make you miss your period.',	'0',	'en',	'2019-12-11 15:44:54.651455'),
('fbdd45e1-1848-4a98-9cbd-70346a3562d2',	'Family planning',	'It''s possible to get pregnant even if you have never had a period.''🤔 ',	'True',	'False',	'NA',	'1',	'It''s actually true!! 😲Even if you''ve not started your period yet, it''s possible your body might have released an egg which could be fertilised.',	'Yes, it''s True! 😲Even if you''ve not started your period yet, it''s possible your body might have released an egg which could be fertilised.',	'0',	'en',	'2019-12-11 15:44:54.651455'),
('f81cb5ac-1d5e-4100-9f86-06367bc379c2',	'Puberty',	' ''Puberty and adolescence are the same thing.''🧐 
',	'True',	'False',	'NA',	'2',	'The answer was false! Puberty is when a young person''s body goes through physical changes. Adolescence is the whole journey to becoming an adult. 👦🧔
',	'You''re right, it was false! Puberty is when a young person''s body goes through physical changes. Adolescence is the whole journey to becoming an adult. 👦🧔',	'0',	'en',	'2019-12-11 15:44:54.651455'),
('f5e5142a-c57a-4dfd-9a52-9aabc5d9f396',	'Menstruation and menstrual cycle',	'If period blood is brown or black, it''s a sign something''s wrong.'' 😰',	'True',	'False',	'NA',	'2',	'Oops, no, it was False! No need to worry, the colour of period blood can vary from pink-ish, to red, to brown, to almost black!👍',	'You''re right, it was False! No need to worry: the colour of period blood can vary from pink-ish, to red, to brown, to almost black!👍',	'0',	'en',	'2019-12-11 15:44:54.651455'),
('3cc38360-0a67-49c5-9e52-175d03bd4eae',	'Menstruasi dan siklusnya',	'Jika darah menstruasi berwarna cokelat atau hitam, itu tanda ada yang salah. 😰',	'Benar',	'Salah',	'NA',	'2',	'Oops, itu Salah! Tidak perlu khawatir, warna darah menstruasi berbeda-beda mulai dari merah muda ke merah, cokelat ke hitam.!!👍',	'Kamu benar, itu Salah! Tidak perlu khawatir dengan warna darah menstruasi berbeda-beda mulai dari merah muda ke merah, cokelat ke hitam!👍',	'0',	'id',	'2019-12-11 15:44:54.651455'),
('156b0aea-d9e4-4e5f-a51c-0c1950d76dcd',	'Kesehatan',	'Pusing saat menstruasi itu normal.'' 😵',	'Benar',	'Salah',	'NA',	'1',	'Kurang tepat! Pusing, lemah dan capek berlebih bisa jadi tanda kamu sedang kekurangan zat besi (anemia). Jika kamu selalu merasa seperti ini, cobalah berkonsultasi dengan dokter. 👩‍⚕️',	'Benar sekali! Pusing, lemah dan capek berlebih bisa jadi tanda kamu sedang kekurangan zat besi (anemia). Jika kamu selalu merasa seperti ini, cobalah berkonsultasi dengan dokter. 👩‍⚕️',	'0',	'id',	'2019-12-11 15:44:54.651455'),
('173c8da4-6573-4297-ad9c-3d9b6d9b411a',	'Menstruasi dan siklusnya',	'Jika bulan ini kamu tidak menstruasi, kamu pasti lagi hamil. 🤔',	'Benar',	'Salah',	'NA',	'2',	'Jawabannya itu Salah! Stres, capek berlebih 😫, atau kurang nutrisi bisa bikin kamu tidak menstruasi.',	'Kamu benar! Stres, capek berlebih 😫, atau kurang nutrisi bisa bikin kamu tidak menstruasi.',	'0',	'id',	'2019-12-11 15:44:54.651455'),
('6a28c3c2-1dac-416b-86d5-6a9ef72204eb',	'Kesehatan',	'Makan makanan tertentu akan mengubah bau darah menstruasimu.🍛',	'Benar',	'Salah',	'NA',	'2',	'Salah! Makan apapun tidak akan mengubah bau darah menstruasi, jadi makanlah apapun yang kamu suka! 😋',	'Benar! Makan apapun tidak akan mengubah bau darah menstruasi, jadi makanlah makanan yang kamu suka! 😋',	'0',	'id',	'2019-12-11 15:44:54.651455'),
('4fe59ecf-234e-4338-b1b5-17a3a02cdf9e',	'Mengenal menstruasimu',	'Kamu sebaiknya menggunakan tampon jika sudah tidak perawan 🤔',	'Benar',	'Salah',	'NA',	'2',	'Salah! Siapapun bisa menggunakan tampon. 👍 Selaput dara akan meregang supaya tampon bisa masuk.',	'Benar! Siapapun bisa menggunakan tampon. 👍 Selaput dara akan meregang supaya tampon bisa masuk.',	'0',	'id',	'2019-12-11 15:44:54.651455'),
('7c7760c7-7323-4fd3-af97-fe11ba6b8ad3',	'Mitos dan perasaan',	'Kepercayaan seputar menstruasi bisa menyebabkan perempuan didiskriminasi.'' 😕',	'Benar',	'Salah',	'NA',	'1',	'Salah - jawabannya adalah Benar! Kepercayaan seputar menstruasi bisa menyebabkan perempuan mengalami diskriminasi. 😲',	'Kamu benar! Kepercayaan seputar menstruasi bisa menyebabkan perempuan mengalami diskriminasi. 😲',	'0',	'id',	'2019-12-11 15:44:54.651455'),
('f38b5418-f217-4b81-9c83-cce2d8006c3a',	'Boys, men and relationships',	'Sex and gender are the same thing.''❓ ',	'True',	'False',	'NA',	'2',	'It was false! Sex is defined by your chromosomes (male or female) 🔬Gender are the rules set by society about how you should behave as a man or a woman. ',	'That''s right, sex is defined by your chromosomes (male or female) 🔬Gender are the rules set by society about how you should behave as a man or a woman.',	'0',	'en',	'2019-12-11 15:44:54.651455'),
('b6fafd5e-f697-47f3-8743-b0628a271e50',	'Managing menstruation',	'You should only use a tampon if you are no longer a virgin.'' 🤔
',	'True',	'False',	'NA',	'2',	'Incorrect! Anyone can use a tampon. 👍 The hymen usually stretches to let the tip of the tampon pass through.
',	'Correct! Anyone can use a tampon. 👍 The hymen usually stretches to let the tip of the tampon pass through.',	'0',	'en',	'2019-12-11 15:44:54.651455'),
('ba2147e5-2bef-497b-9a00-e3829e61f323',	'Relasi dan lawan jenis',	'Jenis kelamin dan gender itu sama saja.❓',	'Benar',	'Salah',	'NA',	'2',	'Ini Salah! Jenis kelamin ditentukan oleh kromosom (laki-laki dan perempuan) 🔬. Gender merupakan aturan-aturan yang dibuat oleh masyarakat tentang bagaimana kamu bersikap sebagai laki-laki atau perempuan.',	'Benar! Jenis kelamin ditentukan oleh kromosom (laki-laki dan perempuan) 🔬. Gender merupakan aturan-aturan yang dibuat oleh masyarakat tentang bagaimana kamu bersikap sebagai laki-laki atau perempuan.',	'0',	'id',	'2019-12-11 15:44:54.651455'),
('1b7f2773-6901-4e81-b22c-3190bab72cb0',	'Сарын тэмдэг ба мөчлөг',	'Сарын тэмдгийн цус хүрэн эсвэл хар байвал, энэ нь ямар нэгэн асуудал байгаагийн шинж.'' 😰',	'Үнэн',	'Худал',	'NA',	'2',	'Өө, үгүй, энэ бол Худал! Санаа зовох хэрэггүй. Сарын тэмдгийн өнгө ягаанаас улаан, хүрэн, бараг хар хүртэл өнгөтэй байдаг ба энэ нь хэвийн зүйл юм!👍',	'Чи зөв хариуллаа. Энэ бол Худал! Санаа зовох хэрэггүй. Сарын тэмдгийн өнгө ягаанаас улаан, хүрэн, бараг хар хүртэл өнгөтэй байдаг ба энэ нь хэвийн зүйл юм!👍',	'0',	'mn',	'2019-12-11 15:44:54.651455'),
('81f74913-f128-4e3e-ba49-128779e7d799',	'Эрүүл мэнд, хоол тэжээл ба дасгал хөдөлгөөн',	'Зарим нэг хоол хүнс сарын тэмдгийн цусны үнэрт нөлөөлдөг.🍛''
',	'Үнэн',	'Худал',	'NA',	'2',	'Буруу хариулт байна! Ямар ч хоол идсэн энэ нь сарын тэмдгийн цусны үнэрт нөлөөлөхгүй болохоор дуртай хоолоо ид! 😋',	'Зөв байна! Ямар ч хоол идсэн энэ нь сарын тэмдгийн цусны үнэрт нөлөөлөхгүй болохоор дуртай хоолоо ид! 😋',	'0',	'mn',	'2019-12-11 15:44:54.651455'),
('3abb0a2c-9bc2-477d-9ba3-18caba2836f6',	'Хөвгүүд ба үерхэл',	'Хүйс болон жендер нь адилхан ойлголт юм.''❓ 

',	'Үнэн',	'Худал',	'NA',	'2',	'Буруу байлаа! Хүйс нь хромсомоор эмэгтэй эсвэл эрэгтэй гэж тодорхойлогддог бол🔬Жендер нь нийгмээс эрэгтэй болон эмэгтэй хүмүүс биеэ хэрхэн авч явах талаар заасан хэм хэмжээ юм.',	'Тийм шүү! Хүйс нь хромсомоор эмэгтэй эсвэл эрэгтэй гэж тодорхойлогддог бол🔬Жендер нь нийгмээс эрэгтэй болон эмэгтэй хүмүүс биеэ хэрхэн авч явах талаар тогтоосон хэм хэмжээ юм.',	'0',	'mn',	'2019-12-11 15:44:54.651455'),
('f946c089-b70a-4ef4-b2e1-c614d6fb1055',	'Бэлгийн бойжилт',	' ''Бэлгийн бойжилт болон өсвөр нас нь адилхан ойлголт юм''🧐 

',	'Үнэн',	'Худал',	'NA',	'2',	'Зөв хариулт бол худлаа! Бэлгийн бойжилт нь залуу хүний биед гарч буй өөрчлөлтүүд бол өсвөр нас нь нас бие гүйцсэн хүн болох аялал юм. 👦🧔',	'Чиний зөв, энэ бол худлаа! Бэлгийн бойжилт нь залуу хүний биед гарч буй өөрчлөлтүүд бол өсвөр нас нь нас бие гүйцсэн хүн болох аялал юм. 👦🧔',	'0',	'mn',	'2019-12-11 15:44:54.651455'),
('606945b6-882c-45b8-aad7-b350c0567e1e',	'Гэр бүл төлөвлөлт',	'Эрэгтэй хүний бэлгийн эс эмэгтэй хүний өндгөн эстэй нийлснээр хүүхэд үүснэ.''👶

',	'Үнэн',	'Худал',	'NA',	'1',	'Яг үнэндээ энэ үнэн! Бэлгийн харьцааны үед эрэгтэй дур тавих үед сая сая эр бэлгийн эс ялгарч үтрээнд асгарч тэдгээр нь умайд ордог ба хүүхэд бүрэлдэхэд ердөө ганц эр бэлгийн эс л шаардлагатай! 😮',	'Та асуудлаа мэдэж байна! Бэлгийн харьцааны үед эрэгтэй дур тавих үед сая сая эр бэлгийн эс ялгарч үтрээнд асгарч тэдгээр нь умайд ордог ба хүүхэд бүрэлдэхэд ердөө ганц эр бэлгийн эс л шаардлагатай! 😮',	'0',	'mn',	'2019-12-11 15:44:54.651455'),
('646786db-2bd3-442f-85f8-08666011deeb',	'Эрүүл мэнд, хоол тэжээл ба дасгал хөдөлгөөн',	'Сарын тэмдгийн үеэр толгой эргэх нь хэвийн бус зүйл 😵 

',	'Үнэн',	'Худал',	'NA',	'1',	'Энэ нь үнэн! Толгой эргэх, бие сульдах, амархан ядрах нь төмрийн дутагдалд орж буйн шинж байж болно. Ихэнхдээ ийм шинж тэмдэг илэрч байвал эмчид үзүүлэх хэрэгтэй шүү!👩‍⚕️',	'Тиймээ! Толгой эргэх, бие сульдах, амархан ядрах нь төмрийн дутагдалд орж буйн шинж байж болно. Ихэнхдээ ийм шинж тэмдэг илэрч байвал эмчид үзүүлэх хэрэгтэй шүү!👩‍⚕️',	'0',	'mn',	'2019-12-11 15:44:54.651455'),
('609f0a40-9d89-4394-82d1-87075c346b34',	'Гэр бүл төлөвлөлт',	'Сарын тэмдэг өмнө нь хэзээ ч ирж байгаагүй ч гэсэн жирэмсэн болж болно. 🤔 

',	'Үнэн',	'Худал',	'NA',	'1',	'Яг үнэндээ энэ бол үнэн! 😲 Хэдийгээр чиний сарын тэмдэг ирээгүй байсан ч гэсэн үр тогтоох боломжтой өндгөн эс боловсорсон байх боломжтой.',	'Тиймээ энэ үнэн! 😲 Хэдийгээр чиний сарын тэмдэг ирээгүй байсан ч гэсэн үр тогтоох боломжтой өндгөн эс боловсорсон байх боломжтой.',	'0',	'mn',	'2019-12-11 15:44:54.651455'),
('ad3e7d8f-82f4-4d62-bc13-ec12f0d56f1c',	'Сарын тэмдэг ба мөчлөг',	'Хэрэв сарын тэмдэг ирэхгүй бол чи баталгаатай жирэмсэн болсон байна гэсэн үг. 🤔


',	'Үнэн',	'Худал',	'NA',	'2',	'Хариулт буруу! Стрессдэх, хэт ядрах 😫 эсвэл хоол хүнс тааруу байвал сарын тэмдэг алдагдах нь бий.  Сарын тэмдэг нь оройтож ирсэн охидын хувьд мөчлөг алдагдах нь элбэг тохиолддог.',	'Таны зөв! Стрессдэх, хэт ядрах 😫, эсвэл хоол хүнс тааруу байвал сарын тэмдэг хугацаандаа ирэхгүй алдагдах нь бий. Сарын тэмдэг нь оройтож ирсэн охидын хувьд мөчлөг алдагдах нь элбэг тохиолддог.',	'0',	'mn',	'2019-12-11 15:44:54.651455'),
('72ecd8f4-1a73-436c-97e8-4df3d8a1a640',	'Төөрөгдөл ба мэдрэмж',	'Заримдаа сарын тэмдгийн талаарх буруу ойлголтууд нь охидыг алагчилахад хүргэдэг. 😕 

',	'Үнэн',	'Худал',	'NA',	'1',	'Энэ нь үнэн!  Бүр тодруулбал, сарын тэмдгээс болж охидыг ялгаварлан гадуурхдаг гэж итгэдэг. Гэвч сарын тэмдэг бол байгалийн хэвийн зүйл бөгөөд, түүнгүйгээр хүн төрөлхтөн өсөн үржих боломжгүй гэдгийг санаарай! 😲',	'Чиний зөв!  Бүр тодруулбал, сарын тэмдгээс болж охидыг ялгаварлан гадуурхдаг гэж итгэдэг. Гэвч сарын тэмдэг бол байгалийн хэвийн зүйл бөгөөд, түүнгүйгээр хүн төрөлхтөн өсөн үржих боломжгүй гэдгийг санаарай! 😲',	'0',	'mn',	'2019-12-11 15:44:54.651455'),
('df1f652e-0178-4a64-a850-06563e4f4bac',	'Сарын тэмдгийн эрүүл ахуйг сахих талаар',	'Тампон ашигласнаар чи онгон байдлаа алдах боломжтой. 🤔

',	'Үнэн',	'Худал',	'NA',	'2',	'Буруу! Тампоныг хэн ч хэрэглэж болно. 👍Тампон заримдаа онгон хальсыг урдаг гэвч ихэнхдээ тампоныг үтрээнд оруулахад тэр хэмжээгээр онгон хальс сунадаг.',	'Зөв! Тампоныг хэн ч хэрэглэж болно. 👍Тампон заримдаа онгон хальсыг урдаг гэвч ихэнхдээ тампоныг үтрээнд оруулахад тэр хэмжээгээр онгон хальс сунадаг.',	'0',	'mn',	'2019-12-11 15:44:54.651455'),
('8716feb1-82e5-454a-b908-d11605babd89',	'Family planning',	'A baby is created when the sperm from a man joins an egg from a woman.''👶
',	'True',	'False',	'NA',	'1',	'It''s actually true! When a guy ejaculates during sex, he releases millions of tiny sperm into the vagina, which swim up towards the uterus. 😮',	'That''s right! When a guy ejaculates during sex, he releases millions of tiny sperm into the vagina, which swim up towards the uterus. 😮',	'0',	'en',	'2019-12-11 15:44:54.651455'),
('81f1f97d-ea78-4a53-8fec-9c6333924903',	'Health, nutrition and exercise',	'Eating certain foods can change the smell of your period blood.🍛''
',	'True',	'False',	'NA',	'2',	'Incorrect! Nothing you eat will affect the smell of your period blood, so eat what you like! 😋',	'Correct! Nothing you eat will affect the smell of your period blood, so eat what you like! 😋',	'0',	'en',	'2019-12-11 15:44:54.651455');

DROP TABLE IF EXISTS "subcategory";
CREATE TABLE "public"."subcategory" (
    "id" uuid NOT NULL,
    "title" character varying NOT NULL,
    "parent_category" character varying NOT NULL,
    "lang" character varying NOT NULL,
    CONSTRAINT "PK_5ad0b82340b411f9463c8e9554d" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "subcategory" ("id", "title", "parent_category", "lang") VALUES
('c7809bc0-41ba-4f7d-9014-c4456f29d220',	'Menstruation and periods',	'700e0378-2c0a-47bb-815b-757bec70d463',	'en'),
('3484ca82-bbbf-4bfd-b9d8-68bec190ebe1',	'Irregularity and missed periods',	'700e0378-2c0a-47bb-815b-757bec70d463',	'en'),
('1b79055a-f881-48e7-8f8a-8d8058016332',	'Blood, flow and discharge',	'700e0378-2c0a-47bb-815b-757bec70d463',	'en'),
('46ae80de-7f64-4d91-8aca-640a15d790d4',	'Hygiene',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'en'),
('b7448bda-0584-4184-9d36-6aecc340e49c',	'Sanitary protection',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'en'),
('b10d5dba-3b54-42cc-b937-ba037ce109ee',	'Pain and PMS',	'2711c0a5-e829-43c3-a30b-80fdfdc30298',	'en'),
('d8fc9bd6-a7ee-4a7a-af44-d9ea91eb03c1',	'Nutrition and diet',	'54b24a83-7fa4-4513-9afe-f21ae1eda9c0',	'en'),
('1dd8a452-3fad-41bd-a833-63a77742fca7',	'Exercise',	'54b24a83-7fa4-4513-9afe-f21ae1eda9c0',	'en'),
('d171d610-6715-436f-8d02-18e3d570e0b1',	'Puberty',	'7940acf8-f02c-4763-bd60-14d9f186c8aa',	'en'),
('1ba79685-8198-4321-8485-c687b8b82283',	'Sex',	'8048de61-64b9-4c14-b4b7-134982d999e0',	'en'),
('79fe6923-ebe4-4cb8-8ced-615fceefde21',	'Fertility',	'8048de61-64b9-4c14-b4b7-134982d999e0',	'en'),
('98405a27-53ff-4767-8d7a-b07a0e7fc95d',	'Pregnancy',	'8048de61-64b9-4c14-b4b7-134982d999e0',	'en'),
('b8fafa9b-c5d8-4a60-b105-d685fa093692',	'Boys and men',	'926f2cd1-74a5-4d2a-860c-96c3e9dca8f0',	'en'),
('3306a78f-dc46-4816-b7ab-92ce7714e1d9',	'Gender',	'926f2cd1-74a5-4d2a-860c-96c3e9dca8f0',	'en'),
('0d0467ad-f70e-461e-873e-d34663be4798',	'Fear',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'en'),
('365b4a09-e9c0-4882-a55e-7f3e55ac1e80',	'Shame',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'en'),
('e96356b5-dac3-418b-af34-be15c7038056',	'Myths',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'en'),
('19962fc5-23c9-4968-a1d2-f26b603b8072',	'Encouragement',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'en'),
('4be262d8-4f93-4681-ae4c-a758d2c2306f',	'Feelings',	'dbb6c97d-a804-4b1f-b413-2391e3db63ce',	'en'),
('51caab87-7719-41e1-b01e-69704547818a',	'School preparation and management',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'en'),
('6016485e-561c-4c77-8f19-4e48c4be253f',	'Beauty and fashion',	'3bb4bdc9-ee74-41ef-8ec9-f109dbde9cfc',	'en'),
('b433fc3c-c5f4-4dc4-acaa-99b731be49e2',	'Menstruasi',	'0f6bb3e9-b341-4dcd-95b1-54e116842541',	'en'),
('671a41f5-05d0-4bde-9c6f-1050a2ea7a31',	'Mens yang tidak teratur',	'0f6bb3e9-b341-4dcd-95b1-54e116842541',	'en'),
('0a1eb771-fdec-43b4-beb4-bdf048d05ca6',	'Darah mens dan keputihan',	'0f6bb3e9-b341-4dcd-95b1-54e116842541',	'en'),
('1bd56db0-5b83-49c4-bf7f-5d2365d7d479',	'Kebersihan',	'913d85f7-ebf0-4a6d-a034-c7156f6e35d1',	'en'),
('3087e403-ede3-4636-bed6-3580f8bcb0bf',	'Tentang pembalut',	'913d85f7-ebf0-4a6d-a034-c7156f6e35d1',	'en'),
('e272bd64-31c0-43c2-a3b8-320bd9fd4879',	'Sebelum dan saat mens',	'913d85f7-ebf0-4a6d-a034-c7156f6e35d1',	'en'),
('8c65d441-b345-497a-9648-59163d99b1f0',	'Nutrisi dan pola makan',	'e0e72630-15f7-4ad0-a3bb-90a558e20ca9',	'en'),
('c92ed98e-7f80-4bef-a568-457b687e4d28',	'Pubertas',	'cc48386c-473e-447e-ab0b-718f287b9edf',	'en'),
('2b73c879-0e31-47d8-aacc-d67ee6d53ced',	'Olahraga',	'e0e72630-15f7-4ad0-a3bb-90a558e20ca9',	'en'),
('1ac027e2-ce58-42bd-9e32-b791787642d9',	'Laki-laki',	'401da0a7-6fe4-40ac-9e43-8303b1559f37',	'en'),
('b0654575-c9aa-45f7-ac9e-161d6c1970cf',	'Peran sosial',	'401da0a7-6fe4-40ac-9e43-8303b1559f37',	'en'),
('44094cd5-fdab-45ab-9dde-ed21fa204c33',	'Mitos',	'e50bd4f4-d1ff-4b77-87f1-95f2cc6b261c',	'en'),
('2e5f7509-dd93-4a54-9835-d83d411f7ca1',	'Malu',	'e50bd4f4-d1ff-4b77-87f1-95f2cc6b261c',	'en'),
('ad136c40-ef15-4b98-a358-d7617d3c2a70',	'Takut',	'e50bd4f4-d1ff-4b77-87f1-95f2cc6b261c',	'en'),
('1796d30c-1643-4e2c-8960-d5c41f7510b3',	'Perasaan',	'e50bd4f4-d1ff-4b77-87f1-95f2cc6b261c',	'en'),
('e9315c15-fc0d-40ff-bba8-694bb610d088',	'Motivasi',	'1e47d3d9-2e63-45c9-86f3-5f0da5569105',	'en'),
('a5819596-1e2e-4086-a360-33f24f8affb0',	'Activitas',	'1e47d3d9-2e63-45c9-86f3-5f0da5569105',	'en'),
('e9713a4d-3f9f-49a8-9720-b00872dc1770',	'Kecantikan dan fashion',	'1e47d3d9-2e63-45c9-86f3-5f0da5569105',	'en'),
('b03a2640-dd8f-4db2-8d8d-3d5a97e3968b',	'Menstruasi',	'700f48bd-324c-44b0-92d9-bf2172e0fe98',	'en'),
('60018465-1301-4757-b107-d07b3072d6f9',	'Mens yang tidak teratur',	'700f48bd-324c-44b0-92d9-bf2172e0fe98',	'en'),
('fa72663f-6e55-4ae2-8fb5-f4b211dfb85c',	'Darah mens dan keputihan',	'700f48bd-324c-44b0-92d9-bf2172e0fe98',	'en'),
('05765015-fd00-44e8-af30-1ff2c3a0d801',	'Kebersihan',	'13f66d68-e41b-4079-9fc8-60d9d02fb64b',	'en'),
('1feb94b6-65fd-41a9-a5dc-0831549125df',	'Tentang pembalut',	'13f66d68-e41b-4079-9fc8-60d9d02fb64b',	'en'),
('26bb20b0-c1fb-4c67-9f00-314b763daee9',	'Sebelum dan saat mens',	'13f66d68-e41b-4079-9fc8-60d9d02fb64b',	'en'),
('7f5c7d66-5509-4cc5-b565-bcced06f6468',	'Nutrisi dan pola makan',	'68218da8-a1d2-4bf0-8b34-e18efd8a6033',	'en'),
('a9d5c6d4-46a9-40d7-bb96-24c75e0e8538',	'Pubertas',	'6e4a2621-c960-42fe-9cfe-79edb5ece920',	'en'),
('43ec9afa-cd7b-4223-8730-8f636c0b4383',	'Olahraga',	'68218da8-a1d2-4bf0-8b34-e18efd8a6033',	'en'),
('3989b698-6c82-46cc-8c80-e5e8fb00ac4d',	'Laki-laki',	'dfa1504b-6b69-413f-916d-9c41079fecf8',	'en'),
('4001060e-d8d3-493a-94a8-9b74ae496db3',	'Peran sosial',	'dfa1504b-6b69-413f-916d-9c41079fecf8',	'en'),
('291c0e0e-2aba-4664-b793-e27530d5a905',	'Takut',	'374db022-bcca-4e8d-bef8-0e975d800b92',	'en'),
('9bb5c411-9bef-48a7-864c-58c8e7f45f67',	'Mitos',	'374db022-bcca-4e8d-bef8-0e975d800b92',	'en'),
('a1c7f864-1bc1-4b06-bf3e-358f96be2ef4',	'Malu',	'374db022-bcca-4e8d-bef8-0e975d800b92',	'en'),
('94fbb403-00d1-4e26-9e97-7dcaec4b84e8',	'Perasaan',	'374db022-bcca-4e8d-bef8-0e975d800b92',	'en'),
('48f813a8-e10d-444d-aa4a-00f15661d903',	'Motivasi',	'c6cdcebb-9301-4962-9e88-54aced5635d2',	'en'),
('2738d7d8-3a9a-467a-9a4c-75f1fe737e0f',	'Activitas',	'c6cdcebb-9301-4962-9e88-54aced5635d2',	'en'),
('07d01eb8-3e7d-4ef1-81fa-8b14d249d5c5',	'Kecantikan dan fashion',	'c6cdcebb-9301-4962-9e88-54aced5635d2',	'en'),
('11f8a576-288e-4f49-a94d-f863f45fd77a',	'Menstruasi',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'id'),
('c13240f8-8a2e-4c92-a290-48dfd5823caf',	'Mens yang tidak teratur',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'id'),
('37fdd66b-d98a-45a0-ad84-a7ca0fcbedbf',	'Darah mens dan keputihan',	'f4fc2e27-af8b-44b7-ab8b-b5149fc57813',	'id'),
('003ff911-9f1a-4a43-8f0b-53f1fb4926dd',	'Kebersihan',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'id'),
('946011f2-3581-457a-a7ad-9415d76cf3eb',	'Tentang pembalut',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'id'),
('d7e67c80-4455-450c-8dec-6d87112ab0ee',	'Sebelum dan saat mens',	'75a8544d-2716-4a14-97ac-94cbe26b9d64',	'id'),
('82b8b0a4-2fc3-44a2-8d7b-dab92534e422',	'Nutrisi dan pola makan',	'd4294393-a910-4041-8d19-d5b71e6b0bfb',	'id'),
('ca2367e7-7852-4b45-9292-180d0ed237be',	'Pubertas',	'c0365ddc-ea93-48f7-8ee6-653fff3df031',	'id'),
('ce14ff21-7235-4160-b328-8192cada3e30',	'Olahraga',	'd4294393-a910-4041-8d19-d5b71e6b0bfb',	'id'),
('e38a93b3-32f7-4274-b29e-9a37c6cdcd43',	'Laki-laki',	'e04b0321-f8c5-4fcf-96cf-f386cda7c42d',	'id'),
('455f68ae-98f1-480a-8f88-48ab6988cbef',	'Takut',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'id'),
('052fe6a5-7144-4bc2-b887-7ea4ad7a9bd4',	'Peran sosial',	'e04b0321-f8c5-4fcf-96cf-f386cda7c42d',	'id'),
('6df5b777-0e80-470c-9d11-d12e23ae9154',	'Malu',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'id'),
('123e0359-ccf6-41f9-8ae8-3cb2ab66d9a6',	'Mitos',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'id'),
('152e5809-9980-41ba-bf66-f0e77fb536cc',	'Perasaan',	'ec4975e6-52d6-4387-8e75-124afc3325cf',	'id'),
('cdd466a9-9d5d-4abe-89d8-899a528ac56b',	'Motivasi',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'id'),
('d606e88d-2a98-41ac-acce-310bda3a633d',	'Activitas',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'id'),
('c736230d-c240-4ea3-a716-2aa670247d5c',	'Kecantikan dan fashion',	'ccece518-78d6-4cbe-8460-9b0d1d373cd7',	'id'),
('98598ebe-1dd3-4cc5-8d21-c3ea338bcf5b',	'Сарын тэмдэг',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'mn'),
('2c37bd19-1a36-41e6-916d-e764a2a522cf',	'Сарын тэмдгийн мөчлөг алдагдах, саатах',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'mn'),
('9393c775-ce2b-4235-8e38-89f767990230',	'Цус, сарын тэмдгийн гадагшлалт',	'd70d218f-a63e-480d-9128-3d8ab06a30c0',	'mn'),
('220e4050-4683-478e-8897-b3497d27d537',	'Ариун цэвэр',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'mn'),
('f6820683-7931-4d8b-a7e7-08618abc774a',	'Ариун цэврийн хэрэглэл',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'mn'),
('bbc60b32-563e-427e-939e-59b5db95ab65',	'Өвдөлт ба сарын тэмдгийн өмнөх синдром',	'bd2264f7-aa72-4135-ab2f-67cedf12bb36',	'mn'),
('d5de51f5-3a61-49b7-9d99-9615687457a4',	'Хоол тэжээл',	'76ee9988-9d7d-460d-b662-ed76fa4fcaad',	'mn'),
('2ef18e3f-671a-4f7a-a76e-34661bb75340',	'Дасгал хөдөлгөөн',	'76ee9988-9d7d-460d-b662-ed76fa4fcaad',	'mn'),
('aef52a43-5565-4a6a-bc4a-81da6e8019b5',	'Жирэмслэлт',	'f1116392-57ca-4a55-9b57-43cc302d4c23',	'mn'),
('db83c1a7-d8aa-451e-b4df-2e7d6cd55cfe',	'Ичгүүр',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'mn'),
('61ad01ca-43d2-4dd6-9a1d-1ccda9ca36ee',	'Буруу ойлголтууд',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'mn'),
('f0a67513-423f-4544-8d9d-e01dea4a9cfd',	'Дэмжлэг',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'mn'),
('1f3217d8-2d75-4fa4-bcfb-ab910ebcd550',	'Мэдрэмж',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'mn'),
('8c90e37d-30f7-499a-8caf-dbd9ffb43e48',	'Бэлгийн бойжилт',	'685ff343-22bc-41a0-8f22-b997eb270115',	'mn'),
('1bdc9ba4-adfa-4100-965a-935b8e415e05',	'Бэлгийн харьцаа',	'f1116392-57ca-4a55-9b57-43cc302d4c23',	'mn'),
('32317d84-d06d-4b8a-8195-8e9cacad3f50',	'Үржил, үр тогтолт',	'f1116392-57ca-4a55-9b57-43cc302d4c23',	'mn'),
('66604919-756d-4b6c-8a46-ec509e9ebb83',	'Хөвгүүд болон үерхэл',	'f7ac5798-0487-4d78-a78b-05ffc8c8750c',	'mn'),
('1c9f1a48-583e-484d-942b-4f7d23df4e9a',	'Жендэр',	'f7ac5798-0487-4d78-a78b-05ffc8c8750c',	'mn'),
('ed663ba1-1570-49d5-99a8-d4cd203f113a',	'Айдас',	'8253819f-21e9-4866-8b16-9fbb9ce37c16',	'mn'),
('09ecc64c-ac60-4f32-be7b-586858ddfeb3',	'Хичээл сургууль ба бэлэн байдал',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'mn'),
('c5a56a52-b849-454f-928e-78d98f571207',	'Гоо сайхан ба загвар',	'1bd57546-b402-49bc-9113-d7acfe0401d1',	'mn');

DROP TABLE IF EXISTS "suggestion";
CREATE TABLE "public"."suggestion" (
    "id" uuid NOT NULL,
    "name" character varying NOT NULL,
    "dateRec" character varying NOT NULL,
    "organization" character varying NOT NULL,
    "platform" character varying NOT NULL,
    "reason" character varying NOT NULL,
    "email" character varying NOT NULL,
    "status" character varying NOT NULL,
    "content" character varying NOT NULL,
    "lang" character varying NOT NULL,
    CONSTRAINT "PK_aa072a020434ddd7104de98eebb" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "survey";
CREATE TABLE "public"."survey" (
    "id" uuid NOT NULL,
    "question" character varying NOT NULL,
    "option1" character varying NOT NULL,
    "option2" character varying NOT NULL,
    "option3" character varying NOT NULL,
    "option4" character varying NOT NULL,
    "option5" character varying NOT NULL,
    "response" character varying NOT NULL,
    "live" boolean NOT NULL,
    "lang" character varying NOT NULL,
    "date_created" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT "PK_f0da32b9181e9c02ecf0be11ed3" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "user";
DROP SEQUENCE IF EXISTS user_id_seq;
CREATE SEQUENCE user_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."user" (
    "id" integer DEFAULT nextval('user_id_seq') NOT NULL,
    "username" character varying NOT NULL,
    "password" character varying NOT NULL,
    "lang" character varying NOT NULL,
    "type" character varying NOT NULL,
    "date_created" character varying NOT NULL,
    CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "user" ("id", "username", "password", "lang", "type", "date_created") VALUES
(1,	'OkyAdmin',	'$2b$10$7a.Qo6cxqN6HEzO0We3YLeYoagDETKYc8dWFuhaJYD59yNGJs/ELS',	'en',	'superAdmin',	'2019-12-06T14:48:00.000Z');

CREATE VIEW answered_quizzes
AS
SELECT payload ->> 'id' as id, payload ->> 'question' as question, payload ->> 'isCorrect' as isCorrect, payload ->> 'answerID' as answerID, payload ->> 'answer' as answer, payload ->> 'utcDateTime' as date
FROM app_event
WHERE type = 'ANSWER_QUIZ'

CREATE VIEW answered_surveys
AS
SELECT payload ->> 'id' as id, payload ->> 'question' as question,payload ->> 'answerID' as answerID, payload ->> 'answer' as answer, payload ->> 'utcDateTime' as date
FROM app_event
WHERE type = 'ANSWER_SURVEY'

-- 2019-12-23 11:26:12.844302+00