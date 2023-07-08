L = {}

L["font.1"] = "Microsoft YaHei Bold"
L["font.2"] = "Microsoft YaHei"

L["tier.1"] = "民用"
L["tier.2"] = "警备"
L["tier.3"] = "特遣"
L["tier.4"] = "精英"
L["tier.spec"] = "特殊"
L["type.sidearm"] = "手枪"
L["type.machine_pistol"] = "自动手枪"
L["type.submachine_gun"] = "冲锋枪"
L["type.assault_rifle"] = "突击步枪"
L["type.machine_gun"] = "机枪"
L["type.shotgun"] = "霰弹枪"
L["type.sporter_carbine"] = "射手卡宾枪"
L["type.precision_rifle"] = "精准步枪"
L["type.sniper_rifle"] = "狙击枪"
L["type.melee_weapon"] = "近战武器"
L["type.equipment"] = "装备"
L["type.throwable"] = "投掷物"

L["cust.rating"] = "评分"
L["cust.stats"] = "属性"
L["cust.description"] = "简介："
L["cust.type_tier"] = "{tier}{type}"

L["unit.hu"] = " HU"
L["unit.meter"] = "m"
L["unit.second"] = "s"
L["unit.persecond"] = "/s"
L["unit.mps"] = "m/s" -- meters per second
L["unit.damage"] = "伤害"
L["unit.stk"] = "发致命" -- shots to kill
L["unit.ptk"] = "颗致命" -- pellets to kill

L["slot.default"] = "槽位"
L["slot.optic"] = "瞄具"
L["slot.muzzle"] = "枪口"
L["slot.tactical"] = "战术"
L["slot.accessory"] = "附件"
L["slot.bolt"] = "枪栓"
L["slot.trigger"] = "扳机"
L["slot.ammo"] = "弹种"
L["slot.perk"] = "专长"
L["slot.melee_tech"] = "手法"
L["slot.melee_spec"] = "特技"

L["ammo.ti_flashbang"] = "闪光弹"
L["ammo.ti_thermite"] = "燃烧弹"
L["ammo.ti_smoke"] = "烟雾弹"
L["ammo.ti_c4"] = "C4炸药"
L["ammo.ti_gas"] = "毒气弹"
L["ammo.ti_nuke"] = "核装置"
L["ammo.ti_charge"] = "破门炸药"
L["ammo.ti_sniper"] = "反器材弹药"

L["rating.score"] = "（得分: {score}/{max}）"
L["rating.lethality"] = "爆发火力"
L["rating.lethality.desc"] = "武器快速消灭单个目标的能力。\n相关属性：伤害，射速。"
L["rating.suppression"] = "持续火力"
L["rating.suppression.desc"] = "武器持续输出伤害的能力。\n相关属性：伤害，射速，容量，装填耗时。"
L["rating.range"] = "有效射程"
L["rating.range.desc"] = "武器随距离增减保持伤害的能力。\n相关属性：射程，伤害衰落。"
L["rating.precision"] = "精准度"
L["rating.precision.desc"] = "武器单发或短点射时保持精准的能力。\n相关属性：散射，后坐力。"
L["rating.control"] = "可控度"
L["rating.control.desc"] = "武器持续开火时控制后坐力和保持精准的能力。\n相关属性：射速，后坐力。"
L["rating.handling"] = "手感"
L["rating.handling.desc"] = "武器快速进入准备状态的能力。\n相关属性：瞄准耗时，举起耗时，切换耗时。"
L["rating.maneuvering"] = "机动性"
L["rating.maneuvering.desc"] = "武器不瞄准时保持精准的能力。\n相关属性：腰射散射，空中散射，自由准心，摇晃。"
L["rating.mobility"] = "总体移速"
L["rating.mobility.desc"] = "使用武器时保持移动速度的能力。\n相关属性：各类移动属性。"
L["rating.stability"] = "稳定性"
L["rating.stability.desc"] = "武器瞄准点的随机移动程度。\n相关属性：各类摇晃属性。"

L["stat.table.stat"] = "属性名"
L["stat.table.base"] = "基础值"
L["stat.table.curr"] = "当前值"
L["stat.table.diff"] = "差别"

L["stat.raw_dps"] = "每秒伤害（理想值）"
L["stat.raw_dps.desc"] = "推算得出的，武器每秒能打出的最高伤害。\n不计算头部和肢体伤害倍率。"
L["stat.min_ttk"] = "击杀耗时（理想值）"
L["stat.min_ttk.desc"] = "推算得出的，武器击杀目标需要的最低时间。\n假设目标无护甲，生命值等同于你的生命上限。\n不计算头部和肢体伤害倍率。"
L["stat.armorpenetration"] = "护甲穿透率"
L["stat.armorpenetration.desc"] = "击中护甲时对人体伤害的倍数。\n更高的值表示对护甲的伤害更少，对人体的伤害更大。\n在100%时，护甲会被完全忽略。在0%时，护甲会阻挡所有伤害。"
L["stat.armorbonus"] = "护甲粉碎率"
L["stat.armorbonus.desc"] = "击中护甲时对护甲伤害的倍数。\n高穿透武器的大部分伤害将直接作用于人体\n如果穿透力为100%，将不会对护甲造成伤害。"
L["stat.penetration"] = "物体穿透度"
L["stat.penetration.desc"] = "该武器可射穿的金属厚度。\n根据材质类型，实际穿透厚度会有所不同。"
L["stat.spread"] = "扩散"
L["stat.spread.desc"] = "枪械的基础准确度。"
L["stat.rpm"] = "射速"
L["stat.rpm.desc"] = "枪械的射速，以每分钟为单位。"
L["stat.clipsize"] = "载弹量"
L["stat.clipsize.desc"] = "枪械一次可容纳的弹药量。"
L["stat.sprinttofire"] = "急停时间"
L["stat.sprinttofire.desc"] = "玩家从冲刺移动到能够正常开火所需的时间。"
L["stat.aimdownsights"] = "开镜时间"
L["stat.aimdownsights.desc"] = "玩家从腰射到开镜所需的时间。"
L["stat.muzzlevelocity"] = "子弹初速"
L["stat.muzzlevelocity.desc"] = "子弹在游戏中的飞行速度。\n还可以控制射程值，低于这个值，子弹就会变成命中率。"
L["stat.recoilkick"] = "后坐力强度"
L["stat.recoilkick.desc"] = "移动视角位置的后坐力强度。"
L["stat.recoilstability"] = "后坐力稳定性"
L["stat.recoilstability.desc"] = "后坐力的可控能力。\n稳定性 100% 时后坐力完全垂直。\n稳定性 0% 时后坐力方向为 180° 半圆。"
L["stat.recoilspread"] = "散射强度"
L["stat.recoilspread.desc"] = "每单位散射导致的不准确度。\n较大的数值意味着枪械会在连续射击时变得更不准确。"
L["stat.recoilspread2"] = "散射强度"
L["stat.recoilspread2.desc"] = "每单位散射导致的额外后坐力。\n较大的数值意味着枪械会在连续射击时后坐力变高。"
L["stat.recoildissipation"] = "散射复位速率"
L["stat.recoildissipation.desc"] = "积累后坐力释放速度。\n较大的数值意味着后坐力在复位时间后影响更快消失。"
L["stat.recoilresettime"] = "散射复位延迟"
L["stat.recoilresettime.desc"] = "后坐力开始消散前的延迟时间。\n较大的数值意味着你必须在两次射击之间要等待更长时间，后坐力影响才会开始复位。"
L["stat.recoilmaximum"] = "最大散射"
L["stat.recoilmaximum.desc"] = "连续射击造成的后坐力的上限。"
L["stat.recoilfirstshot"] = "首枪散射倍率"
L["stat.recoilfirstshot.desc"] = "连续射击时第一枪的后坐力倍率。在所有后坐力复位后重置。\n不影响视觉后坐力。"
L["stat.recoilpershot"] = "散射增速"
L["stat.recoilpershot.desc"] = "每一枪增加多少单位的后坐力，通常是1。\n较大的数值会更快地增加不准确度，也需要更长的时间来恢复。"
L["stat.recoilcrouch"] = "蹲伏后坐力率"
L["stat.recoilcrouch.desc"] = "蹲下不动时的后坐力倍率。"
L["stat.movespeed"] = "移动速度"
L["stat.movespeed.desc"] = "当枪械被举起时的移速倍率。当武器处于保险状态时将不会减速。"
L["stat.shootingspeed"] = "射击时移动速度"
L["stat.shootingspeed.desc"] = "射击时的移速倍率。\n后坐力的积累会增加减速强度。"
L["stat.sightedspeed"] = "开镜时移动速度"
L["stat.sightedspeed.desc"] = "开镜时的移速倍率。"
L["stat.reloadspeed"] = "换弹时移动速度"
L["stat.reloadspeed.desc"] = "换弹时的移速倍率。"
L["stat.reloadtime"] = "换弹时间"
L["stat.reloadtime.desc"] = "换弹所需的时间。"
L["stat.deploytime"] = "切换时间"
L["stat.deploytime.desc"] = "切换枪械所需的时间。"
L["stat.sway"] = "水平后坐力"
L["stat.sway.desc"] = "腰射时的水平后坐力。\n水平后坐力会影响你的枪械射击方向，但不会改变你的准星方向。"
L["stat.scopedsway"] = "瞄准水平后坐力"
L["stat.scopedsway.desc"] = "瞄准时的水平后坐力。\n水平后坐力会影响你的枪械射击方向，但不会改变你的准星方向。"
L["stat.swaycrouch"] = "蹲伏水平后坐力"
L["stat.swaycrouch.desc"] = "蹲下不动时的水平后坐力。\n水平后坐力会影响你的枪械射击方向，但不会改变你的准星方向。"
L["stat.midairspread"] = "跳射水平后坐力"
L["stat.midairspread.desc"] = "当你没有站在地面上时的水平后坐力。\n水平后坐力会影响你的枪械射击方向，但不会改变你的准星方向。"
L["stat.hipfirespread"] = "腰射水平后坐力"
L["stat.hipfirespread.desc"] = "腰射时叠加的不准确程度。"
L["stat.meleedamage"] = "近战伤害"
L["stat.meleedamage.desc"] = "近战攻击时造成的伤害。"
L["stat.firemode"] = "射击模式"
L["stat.firemode.desc"] = "枪械的射击模式。"
L["stat.freeaimangle"] = "自由瞄准角度"
L["stat.freeaimangle.desc"] = "腰射时与瞄准方向的最大偏差量。"
L["stat.shotstofail"] = "平均卡壳率"
L["stat.shotstofail.desc"] = "在枪械卡壳之前的能正常击发的平均击发次数。"

-- not in stats page but attachments may use
L["stat.swaycrouch"] = "蹲伏扩散"
L["stat.recoil"] = "后坐力"
L["stat.damage"] = "伤害"
L["stat.damage_max"] = "近距离伤害"
L["stat.damage_min"] = "远距离伤害"
L["stat.range"] = "射程"
L["stat.range_max"] = "最大射程"
L["stat.range_min"] = "最小射程"
L["stat.vol_shoot"] = "击发噪音"
L["stat.blindfiresway"] = "盲射扩散"
L["stat.zoom"] = "瞄准变焦"
L["stat.quickscope"] = "开镜速度"
L["stat.peekpenalty"] = "精准腰射精度"

L["att.procon.3proj"] = "三颗弹头"
L["att.procon.moreproj"] = "更多弹头"
L["att.procon.1proj"] = "一颗弹头"
L["att.procon.noexp"] = "无爆炸"
L["att.procon.direct"] = "直接开火"
L["att.procon.doorbreach"] = "可破门"
L["att.procon.crowd"] = "范围控制"
L["att.procon.nonlethal"] = "非致命"
L["att.procon.detdelay"] = "延迟引爆"
L["att.procon.flash"] = "闪光眩晕效果"
L["att.procon.airburst"] = "空中爆破"
L["att.procon.timedfuse"] = "定时引爆"
L["att.procon.smoke"] = "烟雾弹效果"
L["att.procon.limb"] = "肢体伤害"
L["att.procon.head"] = "爆头伤害"
L["att.procon.onebullet"] = "一颗子弹"
L["att.procon.armor"] = "对甲效果"
L["att.procon.nosafety"] = "无安全距离"
L["att.procon.radius"] = "爆炸范围"
L["att.procon.needprime"] = "未起爆时很弱"
L["att.procon.projrng"] = "弹道和伤害带有随机性"
L["att.procon.failrng"] = "有概率发生戏剧性意外"
L["att.procon.notracer"] = "隐藏弹道"
L["att.procon.refund"] = "大概率返还弹药"
L["att.procon.unreliable"] = "不可靠"
L["att.procon.surplusboost1"] = "偶尔提升射速"
L["att.procon.surplusboost2"] = "提升射速时扳机失控"
L["att.procon.meleeslow"] = "减速近战击中的目标"
L["att.procon.gasimmune"] = "免疫毒气伤害"
L["att.procon.flashresist"] = "提升闪光弹抗性"
L["att.procon.stunresist"] = "减少眩晕/减速持续时间"
L["att.procon.quickthrow"] = "更快的快速投掷"
L["att.procon.throwrocks"] = "投掷石块"
L["att.procon.cornershot"] = "盲射时显示枪口视角"
L["att.procon.dmic"] = "显示附近的目标"
L["att.procon.audible"] = "发出声响"
L["att.procon.flashlight"] = "照明前方区域"
L["att.procon.blind"] = "致盲正在看它的人"
L["att.procon.visible"] = "对他人可见"
L["att.procon.laser"] = "突出瞄准点"
L["att.procon.rf1"] = "显示射程的距离和伤害"
L["att.procon.rf2"] = "在开镜时可视化子弹落点"
L["att.procon.gauge1"] = "显示后坐力、水平后坐力和扩散"
L["att.procon.gauge2"] = "在开镜时可视化扩散"
L["att.procon.auto"] = "全自动射击"
L["att.procon.burst"] = "三连发射击"
L["att.procon.semi"] = "半自动射击"
L["att.procon.autoburst"] = "全自动三连发"
L["att.procon.explosive"] = "爆炸效果"
L["att.procon.reliability"] = "可靠度"

L["att.sight.1"] = "1倍缩放"
L["att.sight.1.25"] = "1.25倍缩放"
L["att.sight.1.5"] = "1.5倍缩放"
L["att.sight.1.75"] = "1.75倍缩放"
L["att.zoom.2"] = "2倍变焦"
L["att.zoom.3"] = "3倍变焦"
L["att.zoom.3.4"] = "3.4倍变焦"
L["att.zoom.4"] = "4倍变焦"
L["att.zoom.5"] = "5倍变焦"
L["att.zoom.6"] = "6倍变焦"
L["att.zoom.8"] = "8倍变焦"
L["att.zoom.10"] = "10倍变焦"
L["att.zoom.12"] = "12倍变焦"

L["att.acc_bipod.name"] = "两脚架"
L["att.acc_bipod.desc"] = "可折叠的架子，蹲下使用可以稳定武器。"
L["att.acc_brace.name"] = "手枪后托"
L["att.acc_brace.desc"] = "架在肩膀上提升手枪稳定性。"
L["att.acc_cheekrest.name"] = "枪托枕"
L["att.acc_cheekrest.desc"] = "枕住下巴，降低瞄准时的武器摇晃。"
L["att.acc_conceal.name"] = "暗兜皮套"
L["att.acc_conceal.desc"] = "藏匿收起的武器，让其他人看不到。"
L["att.acc_ergo.name"] = "人体学握把"
L["att.acc_ergo.desc"] = "更顺手的后握把，开火时移速增加。"
L["att.acc_extendedbelt.name"] = "扩容弹盒"
L["att.acc_extendedbelt.desc"] = "显著提升机枪的弹药装填量。"
L["att.acc_extmag.name"] = "扩容弹匣"
L["att.acc_extmag.name.full"] = "扩容弹匣"
L["att.acc_extmag.desc"] = "小幅提升武器的弹药装填量。"
L["att.acc_foldstock.name"] = "折叠枪托"
L["att.acc_foldstock.desc"] = "不使用枪托。"
L["att.acc_foldstock2.name"] = "收短枪托"
L["att.acc_foldstock2.desc"] = "将枪托变短。"
L["att.acc_pad.name"] = "枪托垫"
L["att.acc_pad.desc"] = "枪托底部插入的橡胶垫子，降低后坐力。"
L["att.acc_quickdraw.name"] = "快切皮套"
L["att.acc_quickdraw.desc"] = "没有扣子的皮套，可提升切换和装填速度。"
L["att.acc_skel.name"] = "骨架化握把"
L["att.acc_skel.desc"] = "更轻盈的后握把，瞄准时移速增加。"
L["att.acc_sling.name"] = "枪带"
L["att.acc_sling.desc"] = "固定在枪上的皮带，可提升切换和装填速度。"

L["att.ammo_40mm_3gl.name"] = "三联弹"
L["att.ammo_40mm_3gl.name.full"] = "40mm 三联弹"
L["att.ammo_40mm_3gl.desc"] = "一次射出三颗伤害较低的弹头。"
L["att.ammo_40mm_buck.name"] = "霰弹"
L["att.ammo_40mm_buck.name.full"] = "40mm 霰弹"
L["att.ammo_40mm_buck.desc"] = "射出高威力弹丸的扁平弹头。"
L["att.ammo_40mm_gas.name"] = "催泪弹"
L["att.ammo_40mm_gas.name.full"] = "40mm 催泪弹"
L["att.ammo_40mm_gas.desc"] = "产生非致命催泪气体的弹头。"
L["att.ammo_40mm_heat.name"] = "箭弹"
L["att.ammo_40mm_heat.name.full"] = "40mm 箭弹"
L["att.ammo_40mm_heat.desc"] = "射出高精度铁箭的扁平弹头。"
L["att.ammo_40mm_lvg.name"] = "震撼弹"
L["att.ammo_40mm_lvg.name.full"] = "40mm 震撼弹"
L["att.ammo_40mm_lvg.desc"] = "射出有闪光效果的弹头。弹头落地后会延迟引爆。"
L["att.ammo_40mm_ratshot.name"] = "空爆弹"
L["att.ammo_40mm_ratshot.name.full"] = "40mm 空爆弹"
L["att.ammo_40mm_ratshot.desc"] = "延时空爆的弹头，杀伤范围很大。"
L["att.ammo_40mm_smoke.name"] = "烟雾弹"
L["att.ammo_40mm_smoke.name.full"] = "40mm 烟雾弹"
L["att.ammo_40mm_smoke.desc"] = "射出无伤害的烟雾，可以隐蔽自己。"
L["att.ammo_amr_hv.name"] = "高速狙击弹"
L["att.ammo_amr_hv.desc"] = "高射程高速度的弹药，近距离杀伤效果变弱。"
L["att.ammo_amr_ratshot.name"] = "猎鼠狙击弹"
L["att.ammo_amr_ratshot.desc"] = "装有微小弹丸的大口径弹药，更容易命中目标。"
L["att.ammo_amr_saphe.name"] = "高爆狙击弹"
L["att.ammo_amr_saphe.desc"] = "产生爆炸效果的大口径弹药。"
L["att.ammo_ks23_flashbang.name"] = "Zvezda 闪光弹"
L["att.ammo_ks23_flashbang.desc"] = "可造成小范围眩晕的特种弹药，射程很短且无伤害。"
L["att.ammo_magnum.name"] = "过压弹"
L["att.ammo_magnum.desc"] = "过量火药能更好维持近距离杀伤力，但更难控制。"
L["att.ammo_pistol_ap.name"] = "钢头弹"
L["att.ammo_pistol_ap.desc"] = "硬化弹头提升穿透效果，但杀伤效果变弱。"
L["att.ammo_pistol_headshot.name"] = "猎头弹"
L["att.ammo_pistol_headshot.desc"] = "对人型目标弱点效果更好的弹药。"
L["att.ammo_pistol_hollowpoints.name"] = "空尖弹"
L["att.ammo_pistol_hollowpoints.desc"] = "对肉体杀伤力效果更好的弹药。"
L["att.ammo_rifle_match.name"] = "竞赛弹"
L["att.ammo_rifle_match.desc"] = "精准度很高的弹药。"
L["att.ammo_roulette.name"] = "俄罗斯轮盘"
L["att.ammo_roulette.desc"] = "拿你的性命下注。有子弹时装填可重置概率。"
L["att.ammo_rpg_improvised.name"] = "土制"
L["att.ammo_rpg_improvised.name.full"] = "RPG-7 土制火箭"
L["att.ammo_rpg_improvised.desc"] = "低价拼单抢来的，应该不会出事吧。"
L["att.ammo_rpg_mortar.name"] = "迫击炮"
L["att.ammo_rpg_mortar.name.full"] = "RPG-7 迫击炮火箭"
L["att.ammo_rpg_mortar.desc"] = "给迫击炮上装了推进器，用来\"间接\"打击。需要一定时间起爆。"
L["att.ammo_rpg_ratshot.name"] = "空爆"
L["att.ammo_rpg_ratshot.name.full"] = "RPG-7 空爆火箭"
L["att.ammo_rpg_ratshot.desc"] = "延时空爆的火箭，杀伤范围极高。"
L["att.ammo_shotgun_bird.name"] = "鸟弹"
L["att.ammo_shotgun_bird.name.full"] = "鸟弹"
L["att.ammo_shotgun_bird.desc"] = "高弹丸量高散射的弹药。"
L["att.ammo_shotgun_mag.name"] = "马格南鹿弹"
L["att.ammo_shotgun_mag.name.full"] = "马格南鹿弹"
L["att.ammo_shotgun_mag.desc"] = "能更好维持近距离杀伤力的弹药。"
L["att.ammo_shotgun_slugs.name"] = "独头弹"
L["att.ammo_shotgun_slugs.name.full"] = "独头弹"
L["att.ammo_shotgun_slugs.desc"] = "发射单颗弹丸，显著提高准度和射程。"
L["att.ammo_shotgun_triple.name"] = "三击弹"
L["att.ammo_shotgun_triple.name.full"] = "三击弹"
L["att.ammo_shotgun_triple.desc"] = "发射三颗中型弹丸，提高准度。"
L["att.ammo_subsonic.name"] = "亚音弹"
L["att.ammo_subsonic.desc"] = "通过减少火药降低子弹速度，可隐藏弹道并降低后坐力。"
L["att.ammo_surplus.name"] = "次品弹"
L["att.ammo_surplus.desc"] = "不太靠谱的弹药，但不知为何满地都是。"
L["att.ammo_tmj.name"] = "披甲弹"
L["att.ammo_tmj.desc"] = "提升穿透力的弹药。"

L["att.bolt_fine.name"] = "精致"
L["att.bolt_fine.name.full"] = "精密枪栓"
L["att.bolt_fine.desc"] = "后坐力恢复速度变快，但增长速度也更快。"
L["att.bolt_rough.name"] = "耐久"
L["att.bolt_rough.name.full"] = "耐久枪栓"
L["att.bolt_rough.desc"] = "后坐力增长速度变慢，但恢复速度也变慢。"
L["att.bolt_light.name"] = "轻盈"
L["att.bolt_light.name.full"] = "轻盈枪栓"
L["att.bolt_light.desc"] = "加快射速，但提高后坐力。"
L["att.bolt_heavy.name"] = "稳重"
L["att.bolt_heavy.name.full"] = "稳重枪栓"
L["att.bolt_heavy.desc"] = "降低后坐力，但也降低射速。"
L["att.bolt_surplus.name"] = "锈铁"
L["att.bolt_surplus.name.full"] = "锈铁枪栓"
L["att.bolt_surplus.desc"] = "难以捉摸的破旧枪栓，时快时慢。"
L["att.bolt_greased.name"] = "注油"
L["att.bolt_greased.name.full"] = "注油枪栓"
L["att.bolt_greased.desc"] = "加快上膛速度，但对枪械性能有影响。"
L["att.bolt_tactical.name"] = "战术"
L["att.bolt_tactical.name.full"] = "战术枪栓"
L["att.bolt_tactical.desc"] = "控制上膛速度，提升枪械性能。"

L["att.muzz_pistol_comp.name"] = "制退器"
L["att.muzz_pistol_comp.desc"] = "显著降低后坐力的枪口配件。"
L["att.muzz_silencer.name"] = "消音器"
L["att.muzz_silencer.desc"] = "降低开火声音的枪口配件。"
L["att.muzz_lbar.name"] = "轻枪管"
L["att.muzz_lbar.desc"] = "提升射程和精准度的枪管配件。"
L["att.muzz_hbar.name"] = "重枪管"
L["att.muzz_hbar.desc"] = "降低后坐力并提升稳定性的枪管配件。"

L["att.optic_okp7.name"] = "OKP-7"
L["att.optic_okp7.desc"] = "俄罗斯制造的反射式瞄准镜。"
L["att.optic_8x.name"] = "长焦瞄准镜"
L["att.optic_8x.desc"] = "专门给狙击手使用的远距离光学镜。"
L["att.optic_acog.name"] = "ACOG"
L["att.optic_acog.desc"] = "中距离作战瞄准镜。"
L["att.optic_elcan.name"] = "ELCAN"
L["att.optic_elcan.desc"] = "低能耗战斗瞄准镜。"
L["att.optic_holographic.name"] = "全息"
L["att.optic_holographic.desc"] = "盒子状的光学元件，有助于提高中距离的瞄准。"
L["att.optic_irons_sniper.name"] = "机瞄"
L["att.optic_irons_sniper.desc"] = "替换默认的瞄准镜，获得更快的瞄准和更好的机动性。"
L["att.optic_irons.name"] = "机瞄"
L["att.optic_irons.desc"] = "基本瞄准器，增加移动性。"
L["att.optic_rds.name"] = "红点"
L["att.optic_rds.desc"] = "有助于提高中距离瞄准的管状光学镜。"
L["att.optic_rmr.name"] = "RMR"
L["att.optic_rmr.desc"] = "用于手枪的低轮廓光学瞄准器。"
L["att.optic_shortdot.name"] = "短点"
L["att.optic_shortdot.desc"] = "紧凑的光学瞄准器，具有不错的缩放率。"

L["att.tac_cornershot.name"] = "拐角摄像机"
L["att.tac_cornershot.desc"] = "在盲射时显示枪口情况。"
L["att.tac_dmic.name"] = "雷达"
L["att.tac_dmic.desc"] = "探测附近目标的位置，但会发出声响。"
L["att.tac_flashlight.name"] = "手电筒"
L["att.tac_flashlight.desc"] = "发出强烈的光束，使盯着它的人致盲。"
L["att.tac_laser.name"] = "镭射"
L["att.tac_laser.desc"] = "发出狭窄的红色光束和圆点，指示枪支的指向。"
L["att.tac_rangefinder.name"] = "测距仪"
L["att.tac_rangefinder.desc"] = "衡量武器的弹道性能。"
L["att.tac_spreadgauge.name"] = "扩散测量仪"
L["att.tac_spreadgauge.desc"] = "测量武器的水平后坐力和后坐力的稳定性。"

L["att.trigger_akimbo.name"] = "双持"
L["att.trigger_akimbo.name.full"] = "双持扳机"
L["att.trigger_akimbo.desc"] = "放马过来！"
L["att.trigger_burst.name"] = "三连发"
L["att.trigger_burst.name.full"] = "三连发扳机"
L["att.trigger_burst.desc"] = "提高稳定性但牺牲了全自动射击。"
L["att.trigger_burst2.name"] = "三连发"
L["att.trigger_burst2.name.full"] = "三连发扳机"
L["att.trigger_burst2.desc"] = "模拟连发射击的扳机"
L["att.trigger_burstauto.name"] = "自动三连发"
L["att.trigger_burstauto.name.full"] = "自动三连发扳机"
L["att.trigger_burstauto.desc"] = "让枪械在射击时实现自动三连发"
L["att.trigger_comp.name"] = "竞赛"
L["att.trigger_comp.name.full"] = "竞赛扳机"
L["att.trigger_comp.desc"] = "用于运动射击的轻质扳机。"
L["att.trigger_comp2.name"] = "竞赛"
L["att.trigger_comp2.name.full"] = "竞赛扳机"
L["att.trigger_comp2.desc"] = "轻质扳机，能更快恢复精准度。"
L["att.trigger_frcd.name"] = "强制复位"
L["att.trigger_frcd.name.full"] = "强制复位扳机"
L["att.trigger_frcd.desc"] = "模拟自动射击的扳机，但性能不佳。"
L["att.trigger_frcd2.name"] = "强制复位"
L["att.trigger_frcd2.name.full"] = "强制复位扳机"
L["att.trigger_frcd2.desc"] = "模拟自动射击的扳机，但性能不佳。"
L["att.trigger_hair.name"] = "快速"
L["att.trigger_hair.name.full"] = "快速扳机"
L["att.trigger_hair.desc"] = "非常灵敏的扳机，可快速半自动射击。"
L["att.trigger_heavy.name"] = "重型"
L["att.trigger_heavy.name.full"] = "重型扳机"
L["att.trigger_heavy.desc"] = "用于持续射击的重型扳机。"
L["att.trigger_heavy2.name"] = "重型"
L["att.trigger_heavy2.name.full"] = "重型扳机"
L["att.trigger_heavy2.desc"] = "沉重的扳机，减少了射击时的移速影响。"
L["att.trigger_semi.name"] = "射手"
L["att.trigger_semi.name.full"] = "射手扳机"
L["att.trigger_semi.desc"] = "提高稳定性但牺牲了全自动射击。"
L["att.trigger_slam.name"] = "惯性"
L["att.trigger_slam.name.full"] = "惯性自动扳机"
L["att.trigger_slam.desc"] = "模拟自动射击的扳机，但性能不佳。"
L["att.trigger_slam2.name"] = "惯性"
L["att.trigger_slam2.name.full"] = "惯性自动扳机"
L["att.trigger_slam2.desc"] = "模拟自动射击的扳机，但性能不佳。"
L["att.trigger_straight.name"] = "平移"
L["att.trigger_straight.name.full"] = "平移扳机"
L["att.trigger_straight.desc"] = "狭窄的扳机，具有卓越的后坐力性能。"
L["att.trigger_wide.name"] = "宽幅"
L["att.trigger_wide.name.full"] = "宽幅扳机"
L["att.trigger_wide.desc"] = "大型扳机组件，即使在尴尬的位置也容易握住。"

L["att.perk_aim.name"] = "死神之眼"
L["att.perk_aim.desc"] = "提高瞄准时的枪械性能。"
L["att.perk_blindfire.name"] = "掩体射击"
L["att.perk_blindfire.name.full"] = "掩体射击"
L["att.perk_blindfire.desc"] = "改善盲射和精准腰射。"
L["att.perk_hipfire.name"] = "兰博"
L["att.perk_hipfire.desc"] = "提高不开镜时的枪械精度。"
L["att.perk_melee.name"] = "粉碎"
L["att.perk_melee.desc"] = "提高近战伤害，并使被击中的目标减速。"
L["att.perk_reload.name"] = "快速换弹"
L["att.perk_reload.desc"] = "加快换弹速度。"
L["att.perk_shock.name"] = "冲锋队"
L["att.perk_shock.name.full"] = "冲锋队"
L["att.perk_shock.desc"] = "在持有武器的情况下，减少负面效果的影响。"
L["att.perk_speed.name"] = "身手敏捷"
L["att.perk_speed.desc"] = "提高枪械的机动性，特别是在换弹时。"
L["att.perk_throw.name"] = "掷弹兵"
L["att.perk_throw.desc"] = "加快了快速投掷，并增加了投掷石块的选项。"