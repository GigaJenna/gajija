-- 게시판
CREATE TABLE `brd#ID` (
    `serial` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `oid` int(11) DEFAULT '0' COMMENT '업체코드',
    `mcode` int(11) DEFAULT '0' COMMENT '메뉴(분류)코드',
    `bid` varchar(35) CHARACTER SET utf8 DEFAULT '',
    `cate` int(11) DEFAULT '0',
    `parent` int(11) DEFAULT '0' COMMENT '소속된 게시글번호',
    `family` int(11) DEFAULT '0' COMMENT '상위게시물코드(그룹코드)',
    `indent` int(11) DEFAULT '0' COMMENT '들여쓰기 수준(Childe Node level)',
    `lft` int(11) DEFAULT '1',
    `rgt` int(11) DEFAULT '2',
    `userid` varchar(30) CHARACTER SET utf8 DEFAULT '' COMMENT '회원 아이디',
    `writer` varchar(45) CHARACTER SET utf8 DEFAULT '' COMMENT '작성자 명',
    `pwd` varchar(45) CHARACTER SET utf8 DEFAULT '' COMMENT '비밀번호',
    `sec_pwd` varchar(20) CHARACTER SET utf8 DEFAULT '' COMMENT '비밀글 비밀번호',
    `title` varchar(150) CHARACTER SET utf8 DEFAULT '' COMMENT '타이틀명',
    `usehtml` tinyint(1) DEFAULT '0' COMMENT 'html 사용유무(사용:1,미사용:0)',
    `memo` longtext CHARACTER SET utf8 COMMENT '내용글',
    `noti` tinyint(1) DEFAULT '0' COMMENT '공지[알림](0:No / 1:Yes)',
    `attach_path` varchar(150) CHARACTER SET utf8 DEFAULT '' COMMENT '첨부파일 폴더',
    `attach_files` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '첨부파일(파일,파일,파일,파일.....)',
    `attach_orig_files` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '첨부 원본파일(파일,파일,파일,파일.....)',
    `sec` tinyint(1) DEFAULT '0' COMMENT '비밀글쓰기 사용 (사용:1/미사용:0)',
    `viewcnt` int(11) DEFAULT '0' COMMENT '조회수',
    `parent_del` tinyint(1) DEFAULT '0' COMMENT '부모글을 삭제한경우 (1:true,0:false)',
    `ip` varchar(20) CHARACTER SET utf8 DEFAULT '' COMMENT 'IP Address',
    `firstdate` int(11) DEFAULT '0' COMMENT '최초 등록일자',
    `regdate` int(11) DEFAULT '0' COMMENT '등록/업데이트 일자',
    PRIMARY KEY (`serial`),
    KEY `idx_base` (`serial`,`mcode`),
    KEY `idx_group` (`mcode`,`family`),
    KEY `idx_title` (`title`),
    KEY `idx_family` (`family`),
    KEY `idx_lft` (`lft`),
    KEY `idx_rgt` (`rgt`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='#TITLE';