SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shop_makeupproduct
-- ----------------------------
DROP TABLE IF EXISTS `shop_makeupproduct`;
CREATE TABLE `shop_makeupproduct`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `brand` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `category` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL,
  `color` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `size` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `rating` decimal(3, 1) NOT NULL,
  `reviews_count` int(0) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_makeupproduct
-- ----------------------------
INSERT INTO `shop_makeupproduct` VALUES (1, 'Rouge Pur Couture Lipstick', 'Yves Saint Laurent', 'Lipstick', 38.00, 'Rich, creamy lipstick that provides full coverage in one swipe.', 'Rouge Tuxedo', '3.8g', 4.8, 250, '2024-10-23 10:00:00', '2024-10-23 10:00:00', 'products/ysl_rouge_pur.jpg');
INSERT INTO `shop_makeupproduct` VALUES (2, 'Color Sensational Lipstick', 'Maybelline', 'Lipstick', 9.99, 'Creamy lipstick with a bold, vibrant finish.', 'Ruby Red', '4.2g', 4.5, 320, '2024-10-23 10:05:00', '2024-10-23 10:05:00', 'products/maybelline_color_sensational.jpg');
INSERT INTO `shop_makeupproduct` VALUES (3, 'Matte Revolution Lipstick', 'Charlotte Tilbury', 'Lipstick', 34.00, 'Long-lasting, moisturizing lipstick with a matte finish.', 'Pillow Talk', '3.5g', 4.9, 450, '2024-10-23 10:10:00', '2024-10-23 10:10:00', 'products/charlotte_tilbury_pillow_talk.jpg');
INSERT INTO `shop_makeupproduct` VALUES (4, 'Double Wear Stay-in-Place Foundation', 'Estee Lauder', 'Foundation', 48.00, '24-hour full coverage foundation with a matte finish.', 'Warm Vanilla', '30ml', 4.8, 500, '2024-10-23 10:15:00', '2024-10-23 10:15:00', 'products/estee_lauder_double_wear.jpg');
INSERT INTO `shop_makeupproduct` VALUES (5, 'Fit Me Matte + Poreless Foundation', 'Maybelline', 'Foundation', 7.99, 'Oil-free foundation for a natural, matte finish.', 'Classic Ivory', '30ml', 4.5, 800, '2024-10-23 10:20:00', '2024-10-23 10:20:00', 'products/maybelline_fit_me.jpg');
INSERT INTO `shop_makeupproduct` VALUES (6, 'Luminous Silk Foundation', 'Giorgio Armani', 'Foundation', 64.00, 'Lightweight foundation that provides a radiant, silky finish.', 'Light Beige', '30ml', 4.7, 300, '2024-10-23 10:25:00', '2024-10-23 10:25:00', 'products/giorgio_armani_luminous_silk.jpg');
INSERT INTO `shop_makeupproduct` VALUES (7, 'Better Than Sex Mascara', 'Too Faced', 'Mascara', 27.00, 'Volumizing mascara for bold, dramatic lashes.', 'Black', '8ml', 4.6, 900, '2024-10-23 10:30:00', '2024-10-23 10:30:00', 'products/too_faced_better_than_sex.jpg');
INSERT INTO `shop_makeupproduct` VALUES (8, 'Lash Sensational Mascara', 'Maybelline', 'Mascara', 10.99, 'Lengthening and volumizing mascara for a fanned-out lash look.', 'Very Black', '9.5ml', 4.5, 700, '2024-10-23 10:35:00', '2024-10-23 10:35:00', 'products/maybelline_lash_sensational.jpg');
INSERT INTO `shop_makeupproduct` VALUES (9, 'Diorshow Mascara', 'Dior', 'Mascara', 29.50, 'Buildable volume mascara for dramatic, thick lashes.', 'Black', '11.5ml', 4.7, 600, '2024-10-23 10:40:00', '2024-10-23 10:40:00', 'products/dior_diorshow.jpg');
INSERT INTO `shop_makeupproduct` VALUES (10, 'Cheek Heat Gel-Cream Blush', 'Maybelline', 'Blush', 7.99, 'Lightweight gel-cream blush that blends seamlessly.', 'Coral Ember', '8ml', 4.4, 200, '2024-10-23 10:45:00', '2024-10-23 10:45:00', 'products/maybelline_cheek_heat.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (11, 'Orgasm Blush', 'NARS', 'Blush', 30.00, 'Iconic blush that delivers a natural-looking flush of color.', 'Orgasm', '4.8g', 4.8, 450, '2024-10-23 10:50:00', '2024-10-23 10:50:00', 'products/nars_orgasm.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (12, 'Flower Blush', 'Milani', 'Blush', 9.99, 'Richly pigmented blush with a natural, buildable finish.', 'Romantic Rose', '5.5g', 4.6, 320, '2024-10-23 10:55:00', '2024-10-23 10:55:00', 'products/milani_flower_blush.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (13, 'Shape Tape Concealer', 'Tarte', 'Concealer', 27.00, 'Full coverage concealer for a flawless matte finish.', 'Light Neutral', '10ml', 4.9, 750, '2024-10-23 11:00:00', '2024-10-23 11:00:00', 'products/tarte_shape_tape.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (14, 'Instant Age Rewind Eraser', 'Maybelline', 'Concealer', 9.99, 'Dark circle treatment concealer with a smooth, natural finish.', 'Ivory', '6ml', 4.6, 600, '2024-10-23 11:05:00', '2024-10-23 11:05:00', 'products/maybelline_age_rewind.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (15, 'Radiant Creamy Concealer', 'NARS', 'Concealer', 30.00, 'Multi-action concealer that brightens and corrects.', 'Vanilla', '6ml', 4.8, 500, '2024-10-23 11:10:00', '2024-10-23 11:10:00', 'products/nars_radiant_creamy.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (16, 'Glowgasm Beauty Light Wand', 'Charlotte Tilbury', 'Highlighter', 40.00, 'Liquid highlighter for a dewy, radiant glow.', 'Goldgasm', '12ml', 4.8, 400, '2024-10-23 11:15:00', '2024-10-23 11:15:00', 'products/charlotte_tilbury_glowgasm.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (17, 'High Beam Liquid Highlighter', 'Benefit Cosmetics', 'Highlighter', 26.00, 'Liquid highlighter for a soft, satiny glow.', 'Shimmering Pink', '10ml', 4.5, 350, '2024-10-23 11:20:00', '2024-10-23 11:20:00', 'products/benefit_high_beam.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (18, 'Strobe Cream', 'MAC Cosmetics', 'Highlighter', 35.00, 'Moisturizer and highlighter for a radiant glow.', 'Pinklite', '50ml', 4.7, 300, '2024-10-23 11:25:00', '2024-10-23 11:25:00', 'products/mac_strobe_cream.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (19, 'Ultra HD Invisible Cover Foundation', 'Make Up For Ever', 'Foundation', 43.00, 'Lightweight foundation for a natural, second-skin effect.', 'Y245', '30ml', 4.7, 550, '2024-10-23 11:30:00', '2024-10-23 11:30:00', 'products/mufe_ultra_hd.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (20, 'Tatouage Couture Liquid Matte Lip Stain', 'Yves Saint Laurent', 'Lipstick', 37.00, 'Long-lasting, high-pigment lip stain with a matte finish.', 'Rouge Tatouage', '6ml', 4.8, 400, '2024-10-23 11:35:00', '2024-10-23 11:35:00', 'products/ysl_tatouage.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (21, 'Lip Maestro Liquid Lipstick', 'Giorgio Armani', 'Lipstick', 38.00, 'Velvety matte liquid lipstick with intense color.', 'Nude Velvet', '6.5ml', 4.9, 420, '2024-10-23 11:40:00', '2024-10-23 11:40:00', 'products/armani_lip_maestro.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (22, 'Born This Way Foundation', 'Too Faced', 'Foundation', 45.00, 'Medium-to-full coverage foundation for a natural glow.', 'Warm Nude', '30ml', 4.6, 450, '2024-10-23 11:45:00', '2024-10-23 11:45:00', 'products/toofaced_born_this_way.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (23, 'Unlimited Mascara', 'Loreal Paris', 'Mascara', 11.99, 'Buildable mascara with a lifting effect and long-lasting wear.', 'Black', '7.4ml', 4.5, 750, '2024-10-23 11:50:00', '2024-10-23 11:50:00', 'products/loreal_unlimited_mascara.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (24, 'Fenty Beauty Pro Filtr Soft Matte Foundation', 'Fenty Beauty', 'Foundation', 36.00, 'Long-wear foundation with a soft matte finish.', 'Soft Matte', '32ml', 4.7, 600, '2024-10-23 11:55:00', '2024-10-23 11:55:00', 'products/fenty_pro_filtr.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (25, 'Infallible Fresh Wear Foundation', 'Loreal Paris', 'Foundation', 14.99, '24-hour long-wear foundation with a breathable texture.', 'Ivory Buff', '30ml', 4.6, 550, '2024-10-23 12:00:00', '2024-10-23 12:00:00', 'products/loreal_infallible.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (26, 'KVD Beauty Everlasting Liquid Lipstick', 'KVD Beauty', 'Lipstick', 21.00, 'Transfer-proof, high-pigment liquid lipstick.', 'Lolita', '6.6ml', 4.8, 380, '2024-10-23 12:05:00', '2024-10-23 12:05:00', 'products/kvd_everlasting_lolita.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (27, 'Super Stay Matte Ink Liquid Lipstick', 'Maybelline', 'Lipstick', 9.49, 'Long-wear liquid lipstick with a matte finish.', 'Voyager', '5ml', 4.7, 800, '2024-10-23 12:10:00', '2024-10-23 12:10:00', 'products/maybelline_superstay.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (28, 'Ambient Lighting Blush', 'Hourglass', 'Blush', 40.00, 'Soft-focus blush for a natural, radiant glow.', 'Luminous Flush', '4.2g', 4.9, 300, '2024-10-23 12:15:00', '2024-10-23 12:15:00', 'products/hourglass_ambient_blush.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (29, 'The POREfessional Primer', 'Benefit Cosmetics', 'Primer', 32.00, 'Smoothing face primer to minimize the look of pores.', 'Nude', '22ml', 4.5, 700, '2024-10-23 12:20:00', '2024-10-23 12:20:00', 'products/benefit_porefessional.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (30, 'All Nighter Setting Spray', 'Urban Decay', 'Setting Spray', 33.00, 'Long-lasting makeup setting spray for a matte finish.', 'Translucent', '118ml', 4.8, 900, '2024-10-23 12:25:00', '2024-10-23 12:25:00', 'products/ud_all_nighter.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (31, 'Veil Mineral Primer', 'Hourglass', 'Primer', 54.00, 'Oil-free primer for a smooth, long-lasting base.', 'Translucent', '30ml', 4.7, 380, '2024-10-23 12:30:00', '2024-10-23 12:30:00', 'products/hourglass_veil_primer.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (32, 'Soft Matte Complete Concealer', 'NARS', 'Concealer', 30.00, 'Full-coverage concealer with a natural matte finish.', 'Custard', '6.2g', 4.8, 400, '2024-10-23 12:40:00', '2024-10-23 12:40:00', 'products/nars_soft_matte_concealer.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (33, 'Stay Matte Powder', 'Rimmel London', 'Powder', 4.99, 'Mattifying powder for a shine-free finish.', 'Transparent', '14g', 4.6, 800, '2024-10-23 12:45:00', '2024-10-23 12:45:00', 'products/rimmel_stay_matte.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (34, 'Mineralize Skinfinish', 'MAC Cosmetics', 'Highlighter', 37.00, 'Natural, radiant powder highlighter.', 'Soft and Gentle', '10g', 4.7, 550, '2024-10-23 12:50:00', '2024-10-23 12:50:00', 'products/mac_mineralize_skinfinish.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (35, 'Ultra HD Setting Powder', 'Make Up For Ever', 'Powder', 36.00, 'Finely milled powder for a flawless, blurred finish.', 'Translucent', '8.5g', 4.8, 320, '2024-10-23 12:55:00', '2024-10-23 12:55:00', 'products/mufe_ultra_hd_powder.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (36, 'Hypnose Drama Instant Full Body Mascara', 'Lancome', 'Mascara', 27.00, 'Volumizing mascara for bold, dramatic lashes.', 'Black', '6.5ml', 4.6, 650, '2024-10-23 13:05:00', '2024-10-23 13:05:00', 'products/lancome_hypnose_mascara.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (37, 'Matte Poreless Foundation', 'Maybelline', 'Foundation', 7.99, 'Oil-free foundation for a natural, matte finish.', 'Porcelain', '30ml', 4.6, 700, '2024-10-23 13:10:00', '2024-10-23 13:10:00', 'products/maybelline_matte_poreless.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (38, 'True Match Lumi Glotion', 'Loreal Paris', 'Highlighter', 14.99, 'Lightweight highlighter for a dewy glow.', 'Light Glow', '50ml', 4.7, 440, '2024-10-23 13:15:00', '2024-10-23 13:15:00', 'products/loreal_lumi_glotion.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (39, 'Dior Addict Lip Glow', 'Dior', 'Lip Balm', 38.00, 'Color-awakening lip balm for a natural flush of color.', '001 Pink', '3.5g', 4.8, 520, '2024-10-23 13:20:00', '2024-10-23 13:20:00', 'products/dior_addict_lip_glow.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (40, 'Dior Forever Skin Glow Foundation', 'Dior', 'Foundation', 52.00, 'Radiant foundation with 24-hour wear and hydration.', '2N Neutral', '30ml', 4.7, 640, '2024-10-23 13:25:00', '2024-10-23 13:25:00', 'products/dior_forever_skin_glow.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (41, 'Rouge Dior Ultra Care Liquid', 'Dior', 'Lipstick', 40.00, 'Liquid lipstick with a satin finish and flower oil.', '707 Bliss', '6ml', 4.8, 450, '2024-10-23 13:30:00', '2024-10-23 13:30:00', 'products/rouge_dior_ultra_care.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (42, 'Chanel Les Beiges Water Fresh Tint', 'Chanel', 'Foundation', 65.00, 'Lightweight foundation with a water-fresh texture.', 'Light', '30ml', 4.9, 380, '2024-10-23 13:35:00', '2024-10-23 13:35:00', 'products/chanel_les_beiges_tint.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (43, 'Chanel Le Volume de Chanel Mascara', 'Chanel', 'Mascara', 32.00, 'High-volume mascara for a dramatic lash effect.', '10 Noir', '6g', 4.7, 720, '2024-10-23 13:40:00', '2024-10-23 13:40:00', 'products/chanel_le_volume.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (44, 'Chanel Joues Contraste Powder Blush', 'Chanel', 'Blush', 45.00, 'Soft, silky powder blush for a natural glow.', 'Rose Initial', '4g', 4.8, 550, '2024-10-23 13:45:00', '2024-10-23 13:45:00', 'products/chanel_joues_contraste.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (45, 'Chanel Vitalumiere Aqua Foundation', 'Chanel', 'Foundation', 50.00, 'Lightweight foundation for a fresh, radiant look.', 'B20 Beige', '30ml', 4.7, 480, '2024-10-23 13:50:00', '2024-10-23 13:50:00', 'products/chanel_vitalumiere_aqua.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (46, 'Dior Diorshow Iconic Overcurl Mascara', 'Dior', 'Mascara', 29.50, 'Curl-enhancing mascara for a long-lasting lift.', '090 Black', '10ml', 4.8, 680, '2024-10-23 13:55:00', '2024-10-23 13:55:00', 'products/dior_diorshow_iconic.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (47, 'Dior Backstage Face and Body Foundation', 'Dior', 'Foundation', 40.00, 'Waterproof foundation with buildable coverage.', '1N Neutral', '50ml', 4.9, 590, '2024-10-23 14:00:00', '2024-10-23 14:00:00', 'products/dior_backstage_foundation.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (48, 'Chanel Rouge Coco Flash Lipstick', 'Chanel', 'Lipstick', 38.00, 'Hydrating lipstick with a shiny finish.', 'Boy', '3g', 4.7, 410, '2024-10-23 14:05:00', '2024-10-23 14:05:00', 'products/chanel_rouge_coco_flash.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (49, 'Chanel Ultra Le Teint Velvet Foundation', 'Chanel', 'Foundation', 60.00, 'Long-wear foundation with a velvety finish.', 'B30 Beige', '30ml', 4.8, 530, '2024-10-23 14:10:00', '2024-10-23 14:10:00', 'products/chanel_ultra_le_teint.jpg');
-- INSERT INTO `shop_makeupproduct` VALUES (50, 'Dior Forever Couture Luminizer Highlighter', 'Dior', 'Highlighter', 48.00, 'Radiant powder highlighter for a glowing finish.', 'Golden Glow', '6g', 4.9, 460, '2024-10-23 14:15:00', '2024-10-23 14:15:00', 'products/dior_forever_luminizer.jpg');

SET FOREIGN_KEY_CHECKS = 1;
